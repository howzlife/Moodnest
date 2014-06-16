ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    p = Pin.all
    e = Event.all
    # Here is an example of a simple dashboard with columns and panels.
    columns do
        column do
            panel "Events" do
                table_for e do
                    column "Title", :title
                    column "Description", :description
                    column "Outcome", :Outcome
                end
            end
        end
        column do
            panel "Pins" do
                table_for p do
                    column "Description", :description
                end
            end
        end
    end


        #column do
        # panel "Recent Events" do
        #   ul do
        #     e.each do |event|
        #       puts event
        #     end
        #   end
        # end
       #end

       #column do
       #  panel "Info" do
        #   para "Welcome to ActiveAdmin."
        # end
       #end
  end # content
end
