class MirrorReflection::New
  # Static attrs
  @database
  @project

  # The creation of the project based on the terminal_params
  # it receive a String as param, like: "mirror:new[project_name mysql gov_db user_admin password_admin db_host]"
  def self.task terminal_params
    # Get params fromt the str passed
    task_name = 'mirror:new'
    prevent_out_bounds = 1

    # Params treating
    terminal_params_str = terminal_params.first
    just_the_params_str = terminal_params_str[task_name.length+prevent_out_bounds, terminal_params_str.length-prevent_out_bounds]
    just_the_params_str.nil? ? (return puts('A project name is required'.colorize(:red))) : params_array = just_the_params_str.split(' ')

    # Remove the last character
    params_array[params_array.length-prevent_out_bounds] = params_array.last.remove(']')

    # base vars
    params_array[1].nil? ? dbms = :mysql : dbms= params_array[1].to_sym
    db_name = params_array[2]
    username = params_array[3]
    password = params_array[4]
    host = params_array[5]

    # Vars received
    @project = params_array[0]
    @database = {
        dbms: dbms,
        name: db_name,
        username: username,
        password: password,
        host: host,
    }

    system("rails new #{@project}")
  end

  def self.project
    @project
  end

  def self.database
    @database
  end
end