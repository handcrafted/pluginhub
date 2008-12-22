class HandcraftedFormBuilder < ActionView::Helpers::FormBuilder 
  
  ["file_field", "password_field", "text_field", "text_area", "check_box", "time_zone_select", "select"].each do |name|
    define_method(name) do |label, *args|
      example = args.first.delete(:example) unless args.blank?
      hint = args.first.delete(:hint) unless args.blank?
      custom_label = args.first.delete(:label) unless args.blank?
      custom_label ||= label.to_s.humanize
      args.first.merge!(:title => example) unless example.blank?
      @template.content_tag(:div, :class => "row") {
          @template.content_tag(:label, custom_label.to_s, :for => "#{@object_name}_#{label}", :class => "#{name}_label")+ super(label, *args) + (hint.nil? ? "" : @template.content_tag(:span, "#{hint.to_s}", :class => "hint"))
      }
    end
  end
  
  def submit(*args)
    block_output = (yield).to_s if block_given?
    block_output = " or " + block_output unless block_output.blank?
    @template.content_tag(:div, :class => "save_actions") do
      super(*args) + block_output.to_s
    end
  end
  
end