AVAILABLE_THEMES=[]
theme_dir=Dir.new(RAILS_ROOT+"/public/stylesheets")
theme_dir.each do |t|
  if File::directory? RAILS_ROOT+"/public/stylesheets/"+t and not t =~ /\./
      AVAILABLE_THEMES << [t.titleize,t]
  end
end
AVAILABLE_THEMES.sort!
DEFAULT_THEME="hot-sneaks"
