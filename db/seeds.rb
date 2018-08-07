3.times do |i|
  Topic.create!(
     title: "Topic #{i}"
  )
end

10.times { |i|
  Blog.create!(
    title: "My blog post ##{i}",
    body: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).",
    topic: Topic.last
  )
}

5.times { |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
}

1.times { |i|
  Portfolio.create!(
    title: "Portfolio title: #{i+1000}",
    subtitle: "Angular",
    body: "Angular portfolio description",
    main_image: "http://via.placeholder.com/350x200",
    thumb_image: "http://via.placeholder.com/60x60"
  )
}

9.times { |i|
  Portfolio.create!(
    title: "Portfolio title: #{i}",
    subtitle: "Ruby on Rails",
    body: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).",
    main_image: "http://via.placeholder.com/350x200",
    thumb_image: "http://via.placeholder.com/60x60"
  )
}