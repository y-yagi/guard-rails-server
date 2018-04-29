require "guard/compat/plugin"

module Guard
  class RailsServer < Plugin
    VERSION = "0.1.0"

    def initialize(options = {})
      super
    end

    def start
      Compat::UI.info "Guard::RailsServer is running"
    end

    def stop
      true
    end

    def reload
      restart
    end

    def run_all
      Compat::UI.info "Restart Rails Server"

      restart
    end

    def run_on_change(paths)
      restart
    end

    private
      def restart
        system(cmd)
      end

      def cmd
        options[:cmd] || "bin/rails restart"
      end
  end
end
