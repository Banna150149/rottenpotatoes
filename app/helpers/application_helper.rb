module ApplicationHelper
    def sortable(column, title = nil)
      title ||= column.titleize
      css_class = column == params[:sort] ? (params[:direction] == 'asc' ? 'sort-asc' : 'sort-desc') : nil
      direction = column == params[:sort] && params[:direction] == 'asc' ? 'desc' : 'asc'
      arrow = column == params[:sort] ? (params[:direction] == 'asc' ? '↑' : '↓') : '' # Add sorting arrows
      link_to "#{title} #{arrow}".html_safe, { sort: column, direction: direction }, { class: css_class }
    end
  end
  