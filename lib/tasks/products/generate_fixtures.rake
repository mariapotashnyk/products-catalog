namespace :products do
  desc 'Create YAML Products fixtures from simple generated data'
  task generate_fixtures: :environment do
    puts 'Products fixtures generation...'
    fixtures_dir = ENV['FIXTURES_PATH'] || 'test/fixtures'
    fixtures_file = File.join(Rails.root, fixtures_dir, 'products.yml')
    output = {}
    100.times do |i|
      output["product_#{i}"] = { "name"        => "Product #{i}",
                                 "description" => "Best product #{i} for everyone!",
                                 "price"       => i + 0.99 }
    end
    file = File.open(fixtures_file, 'w')
    file << output.to_yaml
    file.close
    puts 'done'
  end
end