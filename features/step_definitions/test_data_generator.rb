
def test_data_generator(key)

  key.downcase!
  @test_data_hash = Hash.new if @test_data_hash.nil?
  @test_data_hash['email'] = 'test'+get_timestamp.to_s+'@test.com'
  @test_data_hash['unique first name'] = 'FName '+get_timestamp.to_s
  @test_data_hash['unique last name'] = 'LName '+get_timestamp.to_s
  @test_data_hash['unique complaint description'] = 'Test Description '+get_timestamp.to_s
  @test_data_hash['unique additional description'] = 'Test Additional Description '+get_timestamp.to_s
  @test_data_hash['unique product brand'] = 'Test Brand '+get_timestamp.to_s
  @test_data_hash['unique product name'] = 'Test Product Name '+get_timestamp.to_s
  @test_data_hash['unique task instructions'] = 'Test task instructions '+get_timestamp.to_s
  @test_data_hash['unique note title'] = 'Test note title '+get_timestamp.to_s
  @test_data_hash['unique note text'] = 'Test note text '+get_timestamp.to_s

  @test_data_hash[key]

end
