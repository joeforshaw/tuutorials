module Reportable

  def is_reported?(by_user)
    category = ReportCategory.find_by_name(self.class.to_s)

    reports = Report.exists?(
      :report_category_id => category.id,
      :reported_object_id => self.id,
      :user_id            => by_user.id
    )
  end

end