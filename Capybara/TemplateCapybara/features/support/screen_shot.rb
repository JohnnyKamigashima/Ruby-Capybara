module Screenshot
  def screen_shot(file_name, result)
    path = "reports/results/screenshots/teste_#{result}"
    image = "#{path}/#{file_name}.png"
    attach(page.save_screenshot(image), "image/png")
  end
end
