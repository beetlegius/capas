class AlertComponent < ActionView::Component::Base
  validates :flash, presence: true

  CSS_CLASSES = {
    notice: 'alert alert-success',
    alert: 'alert alert-danger'
  }.freeze

  def initialize(flash:)
    @flash = flash
  end

  def css_class_for(kind)
    CSS_CLASSES[kind.to_sym]
  end

  private

    attr_reader :flash

    def render?
      flash.present?
    end
end
