module ApplicationHelper
  def head_title_tag
    app_name = I18n.t("app_name")
    title = @head_title.present? ? I18n.t("head_title_format", main: app_name, sub: @head_title) : app_name
    content_tag :title, title
  end
end
