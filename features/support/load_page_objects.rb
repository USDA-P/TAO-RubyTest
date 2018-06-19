# Get the Page objects from Page object file
def get_element_target(key,page)
  @page_objects = nil
  @page_objects = { }

  page_map = page.to_s
  page_map.downcase!
  page_map.gsub!('/', '_')
  page_map.gsub!('.','_')

  #load the page object map if it has not been loaded
  eval( "map_#{page_map}" ) if @page_objects[page_map].nil?
  @page_objects[page_map][key.downcase]

end