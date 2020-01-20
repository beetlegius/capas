# frozen_string_literal: true

module ExceptionsHandling
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    private

    def record_invalid(exception)
      flash.now.alert = exception.message

      respond_to do |format|
        format.html do
          case action_name
          when 'new', 'create'
            render :new
          when 'edit', 'update'
            render :edit
          else
            fail NotImplementedError
          end
        end

        format.json { render json: exception.record.errors, status: :unprocessable_entity }
      end
    end
  end
end
