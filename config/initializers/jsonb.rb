class JsonbInput < SimpleForm::Inputs::StringInput
  def input()
    out = ActiveSupport::SafeBuffer.new
    Hash[object.send(attribute_name).sort].each do | k, v|
      out << template.content_tag(:div, class: 'group') do
        template.concat @builder.label(k, object.send(attribute_name), label_html_options)
        template.concat @builder.text_field(k, input_html_options)
      end
    end
    out
  end

  def input_html_options
    {class: 'string form-control'}
  end

end