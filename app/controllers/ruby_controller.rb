class RubyController < ApplicationController
  def methods
    public_code = render_to_string(partial: 'ruby/code/public')
    @public = CodeRay.scan(public_code, :ruby).div.html_safe

    private_code = render_to_string(partial: 'ruby/code/private')
    @private = CodeRay.scan(private_code, :ruby).div.html_safe

    protected_code = render_to_string(partial: 'ruby/code/protected')
    @protected = CodeRay.scan(protected_code, :ruby).div.html_safe
  end
end
