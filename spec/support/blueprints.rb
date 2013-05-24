require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
Project.blueprint do
  name { "CIRunner" }
  repository_url { "https://github.com/rtacconi/cirunner.git" }
  repository_type { "GIT" }
end

Run.blueprint do
  # Attributes here
end

ScriptResult.blueprint do

end

Script.blueprint do
  name { "script1.erb" }
  ordinal { 1 }
end

ScriptList.blueprint do
  # Attributes here
end
