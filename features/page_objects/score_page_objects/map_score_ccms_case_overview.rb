# This file contains page objects xpath for Score case Overview page after Login

def map_score_ccms_case_overview
  @page_objects['score_ccms_case_overview'] =
      {
          'overview:managed by'             => "xpath^^.//*[@id='case_managed_by']",
          'overview:complaint types'        =>    "xpath^^.//*[@id='case_complaint_types']",
          'overview:entered by agency'      =>    "xpath^^.//*[@id='case_entering_agency']",
          'overview:case status'            =>    "xpath^^.//*[@id='case_status_text']",
          'overview:establishment number'   =>    "xpath^^.//*[@id='case_establishment_numbers']/a",
          'overview:entered by'             =>    "xpath^^.//*[@id='case_entered_by']",
          'overview:reported date'          =>    "xpath^^.//*[@id='case_reported_date']",
          'overview:complainant state'      =>    "xpath^^.//*[@id='case_complainant_state']",
          'overview:auto alerts sent to'    =>    "xpath^^.//*[@id='case_auto_alerts_sent_to']"
      }
end