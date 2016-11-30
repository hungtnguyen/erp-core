module Erp
  module ApplicationHelper
    # text field builder
    def erp_form_control(type, options={})
      render partial: "erp/helpers/form_builders/#{type}", locals: { options: options }
    end
    
    # list actions button for list
    def erp_datalist_list_actions(actions=[])
      render partial: "erp/helpers/list/datalist_list_actions", locals: { actions: actions }
    end
    
    # list actions button for each row of list
    def erp_datalist_row_actions(actions=[])
      render partial: "erp/helpers/list/datalist_row_actions", locals: { actions: actions }
    end
    
    # filters button for list
    def erp_datalist_filters(actions=[])
      render partial: "erp/helpers/list/datalist_filters", locals: { actions: actions }
    end
    
    # columns button for list
    def erp_datalist_columns_select(actions=[])
      render partial: "erp/helpers/list/datalist_columns_select", locals: { actions: actions }
    end
    
    # Datalist main helper
    def erp_datalist(options=[])
      render partial: "erp/helpers/list/datalist", locals: { options: options }
    end
    
    # Datalist check all checkbox
    def erp_datalist_check_all
      '<label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
          <input type="checkbox" class="group-checkable datalist-checkbox-all"/>
          <span></span>
      </label>'.html_safe
    end
    
    # Datalist check all checkbox
    def erp_datalist_check_row(options={})
      ('<label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
          <input type="checkbox" class="checkboxes datalist-row-checkbox" name="ids[]" value="'+options[:id].to_s+'" />
          <span></span>
      </label>').html_safe
    end
    
    # Datalist pagination
    def erp_datalist_pagination(data)
      render partial: "erp/helpers/list/datalist_pagination", locals: { data: data }
    end
  end
end
