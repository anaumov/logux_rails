# frozen_string_literal: true

module Logux
  class Action < ::ActionController::Parameters
    def action_name
      type&.split('/')&.dig(0)
    end

    def action_type
      type&.split('/')&.last
    end

    def channel_name
      channel&.split('/')&.dig(0)
    end

    def channel_id
      channel&.split('/')&.last
    end

    def type
      require(:type)
    end

    def channel
      require(:channel)
    end
  end
end
