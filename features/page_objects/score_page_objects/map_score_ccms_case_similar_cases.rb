# This file contains page objects xpath for Score case Similar Cases page after Login

def map_score_ccms_case_similar_cases
  @page_objects['score_ccms_case_similar_cases'] =
      {
          'manual search'                         =>    "xpath^^.//*[@id='manual-search']",
          'run algorithm'                         =>    "xpath^^.//*[@id='run-algorithm']",
          'similar case table column header1'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[1]",
          'similar case table column header2'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[2]",
          'similar case table column header3'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[3]",
          'similar case table column header4'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[4]",
          'similar case table column header5'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[5]",
          'similar case table column header6'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[6]",
          'similar case table column header7'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[7]",
          'similar case table column header8'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[8]",
          'similar case table column header9'     =>    "xpath^^.//*[@id='similar-table']/descendant::th[9]",
          'similar case table column header10'    =>    "xpath^^.//*[@id='similar-table']/descendant::th[10]",
          'similar case table column header11'    =>    "xpath^^.//*[@id='similar-table']/descendant::th[11]",
          'first trash icon'                      =>    "xpath^^.//*[@id='similar-table']/descendant::th[text()='Action']/following::a[1]"
      }
end