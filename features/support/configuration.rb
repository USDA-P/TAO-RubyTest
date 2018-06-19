# ==================================================
# Description: Functions that support
#   load values from yml file and store in hash table.
#
# Author: Bal Krishna
# Date: 3/6/2018
# ==================================================
require 'hashie'
module Configuration
  def self.load
    envs  = Hashie::Mash.load("#{Dir.pwd}/features/support/config.yml")
    # @config = envs[:test31].merge(envs[ENV['TEST_ENV'].to_sym]).merge(envs[ENV['
    # BROWSER'].to_sym]).merge(envs[ENV['EXEC_SPEED'].to_sym])
    @config = envs[:test05].merge(envs[ENV['TEST_ENV'].to_sym]).merge(envs[ENV['BROWSER'].to_sym])
  end

  private

  def self.method_missing(method, *args, &block)
    @config.send(method, *args, &block)
  end
end

Configuration.load