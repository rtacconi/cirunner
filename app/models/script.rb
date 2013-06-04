class Script
  def self.all
    new_list = []
    (Dir.entries("#{Rails.root}/app/scripts/") - %w{. ..}).each {|file| new_list << [file, file]}

    new_list
  end
end
