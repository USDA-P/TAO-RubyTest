require 'date'

  def get_timestamp
    time = Time.new
    time.strftime('%d%m%Y%H%M%S')
  end

  def get_today_date
    time = Time.new
    time.strftime('%m/%d/%Y')
  end

  def get_tomorrow_date
    tomorrow = Date.today.next_day
    tomorrow.strftime('%m/%d/%Y')
  end

  def get_start_date_of_current_month_year
    time = Time.new
    start_date_of_current_month= Time.new(time.year, time.month, 1)
    start_date_of_current_month.strftime('%m/%d/%Y')
  end

  def get_yesterday_date
    yesterday = Date.today.prev_day
    yesterday.strftime('%m/%d/%Y')
  end

  def get_current_month
    time = Time.new
    time.strftime('%m')
  end

  def get_prior_month_date(month)
    Date.today << month.to_i # Subtracts a month from current date
  end

  def get_current_year
    time = Time.new
    time.strftime('%Y')
  end

  def get_next_year_from_today
    time = Time.new
    next_year_date= Time.new(time.year+1, time.month, time.day)
    next_year_date.strftime('%m/%d/%Y')
  end

  def get_today_day
    time = Time.new
    time.strftime('%-d')
  end

  def get_next_day
    next_day = Date.today.next_day
    next_day.strftime('%-d')
  end

  def next_business_day
    time = Date.today
    next_business_day= time.next_day
    while (next_business_day.wday % 7 == 0) || (next_business_day.wday % 7 == 6)
      next_business_day = next_business_day + 1
    end
    next_business_day.strftime('%m/%d/%Y')
  end

  def two_years_before
    time = Date.today
    two_years_before = (time - 730)
    two_years_before.strftime('%m/%d/%Y')
  end

  def past_one_year
    time = Date.today
    past_one_year = (time - 365)
    past_one_year.strftime('%m/%d/%Y')
  end