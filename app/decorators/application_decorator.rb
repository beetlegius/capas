class ApplicationDecorator < Draper::Decorator
  # Define methods for all decorated objects.
  # Helpers are accessed through `helpers` (aka `h`). For example:
  #
  #   def percent_amount
  #     h.number_to_percentage object.amount, precision: 2
  #   end

  def show_button
    h.link_to "Show", object, class: 'btn btn-info'
  end

  def edit_button
    h.link_to "Edit", [:edit, object], class: 'btn btn-primary'
  end

  def destroy_button
    h.link_to "Destroy", object, method: :delete, class: 'btn btn-danger', data: { confirm: 'Are you sure?' }
  end

  def buttons
    h.tag.div class: 'btn-group btn-group-sm' do
      [
        show_button,
        edit_button,
        destroy_button
      ].join.html_safe
    end
  end
end
