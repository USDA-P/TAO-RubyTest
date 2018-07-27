# require 'tiny_tds'

module PHIS_DB

  def self.exec(sql)
    result = con.execute sql
    delay(2)
    result.map{|r| ::Hashie::Mash.new r.snakeize_keys} unless result == nil
  end

  #
  # run an exists query. returns true if exists, false otherwise
  #
  def self.exists?(sql)
    rows = exec "select exists(#{sql}) as check_existence"
    rows.first.check_existence == 1
  end

  def self.close
    con.close
  end

  private

  def self.con
    @con ||= TinyTds::Client.new(username: Configuration.db_username, password: Configuration.db_password, dataserver: Configuration.server_name,database: Configuration.phis_db_name)
  end
end

module FSIS_DB

  def self.exec(sql)
    result = con.execute sql
    result.map{|r| ::Hashie::Mash.new r.snakeize_keys} unless result == nil
  end

  #
  # run an exists query. returns true if exists, false otherwise
  #
  def self.exists?(sql)
    rows = exec "select exists(#{sql}) as check_existence"
    rows.first.check_existence == 1
  end

  def self.close
    con.close
  end

  private

  def self.con
  @con ||= TinyTds::Client.new(username: Configuration.db_username, password: Configuration.db_password, dataserver: Configuration.server_name,database: Configuration.fsis_db_name)
end

end