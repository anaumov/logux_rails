# frozen_string_literal: true

module Logux
  module Model
    class Proxy
      def initialize(model)
        @model = model
      end

      def update(meta, attributes)
        updater = Updater.new(
          model: @model,
          logux_order: meta.logux_order,
          attributes: attributes
        )
        @model.update(updater.updated_attributes)
      end

      def updated_at(field)
        @model.logux_fields_updated_at[field.to_s]
      end
    end
  end
end
