

def check_if_user_gave_input
    abort("Un mot, ni plus ni moins, par ARGV ! ") if ARGV.empty? || ARGV.length >1
    
  end

  def get_folder_name
    return folder_name = ARGV.first.to_s
  end

  def create_folder(name)
    Dir.mkdir(name)
  end

  def create_folder_with_user_name()
    name = get_folder_name
        create_folder(name)
  end

  def go_forward()
    name = get_folder_name
    Dir.chdir name
  end

  

  def create_gem_file()
    file = File.open("Gemfile", "a")
    file.puts("
source 'https://rubygems.org' 
ruby '2.5.1' 
gem 'rubocop', '~> 0.57.2'
gem 'rspec'
")
    file.close
  end

def create_git_init
    system("git init")
end

def create_env_and_git_ignore()
    filenv = File.open(".env","a")
    filenv.close
    file = File.open("gitignore","a")
    file.puts(".env")
    file.close
end

def create_lib()
    create_folder("lib")
end


def rspec_init()
    system("rspect init")
end


def create_readme()
    file = File.open("Readme.md","a")
    file.puts("Ceci est un programme en Ruby")
    file.close
end

def perform
    check_if_user_gave_input
    create_folder_with_user_name
    go_forward
    create_gem_file
    create_git_init
    create_env_and_git_ignore
    create_lib
    rspec_init
    create_readme
end









