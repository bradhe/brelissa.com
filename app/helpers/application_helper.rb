module ApplicationHelper
  def error_for(model, attribute)
    return unless model.errors[attribute]
    return if model.errors[attribute].empty?
    content_tag('span', model.errors[attribute].first, :class => 'error')
  end
end
