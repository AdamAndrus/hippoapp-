class HippoController < ApplicationController
  def create
    @hippo = Hippo.new

    @hippo.name=(params[:name])
    @hippo.color = params[:color]
    @hippo.age = params[:age]

    cookies[:hippo] = @hippo.to_yaml
  end

  def accelerate
    @hippo = YAML.load(cookies[:hippo])
    @hippo.accelerate
    cookies[:hippo] = @hippo.to_yaml
    render 'create.html.erb'
  end

  def decelerate
    @hippo = YAML.load(cookies[:hippo])
    @hippo.decelerate
    cookies[:hippo] = @hippo.to_yaml
    render 'create.html.erb'
  end

  def jaws
  @hippo = YAML.load(cookies[:hippo])
  @hippo.jaws
  cookies[:hippo] = @hippo.to_yaml
  render 'create.html.erb'
  end

end
