After do |scenario|
  # report_path = "reports" #Cria pasta reports
  # FileUtils.mkdir('#{report_path}') if !File.directory?('#{report_path}')
  scenario_name = scenario.name.gsub(/\s+/, "_").tr("/", "_") ##gsub substitui todos espaços por undescore usando regex

  if scenario.failed?
    screen_shot(scenario_name.downcase!, "FALHOU")
  else
    screen_shot(scenario_name.downcase!, "passou")
  end
  current_scope.session.quit
end

# AfterStep do |scenario|
# end

Before do
  report_path = "reports/results" #Deleta reports antigo
  FileUtils.remove_dir(report_path) if File.directory?(report_path)
end
