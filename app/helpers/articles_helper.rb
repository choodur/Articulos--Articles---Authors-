module ArticlesHelper
  
  def options_for_status
    options_for_select([["Draft", "draft"], ["Posted", "posted"]])
  end
end
