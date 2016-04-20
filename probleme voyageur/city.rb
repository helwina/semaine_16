class City
  attr_accessor :latitude
  attr_accessor :longitude
  attr_accessor :villes

  def initialize( latitude, longitude)
    self.latitude = latitude
    self.longitude = longitude
  end

  def distance_to( city )
    latitude_distance = (self.latitude - city.latitude).abs
    longitude_distance = ( self.longitude - city.longitude).abs
    Math.sqrt( latitude_distance.abs2 + longitude_distance.abs2 )
  end

  def city
     villes[
    {
      nom: 'Paris',
      latitude: 48.856578,
      longitude: 2.351828
    }, {
      nom: 'Nantes',
      latitude: 47.21806,
      longitude: -1.55278
    }, {
      nom: 'Lyon',
      latitude: 45.759723,
      longitude: 4.842223
    }, {
      nom: 'Bruxelles',
      latitude: 50.846667,
      longitude: 4.3525
    }, {
      nom: 'Bordeaux',
      latitude: 44.837912,
      longitude: -0.579541
    }, {
      nom: 'Toulouse',
      latitude: 43.604482,
      longitude: 1.443962
    }, {
      nom: 'Montpellier',
      latitude: 43.611944,
      longitude: 3.877222
    }, {
      nom: 'Marseille',
      latitude: 43.296346,
      longitude: 5.369889
    }, {
      nom: 'Tours',
      latitude: 47.393611,
      longitude: 0.689167
    }, {
      nom: 'Lille',
      latitude: 50.637222,
      longitude: 3.063333
    }, {
      nom: 'Strasbourg',
      latitude: 48.573392,
      longitude: 7.752353
    }
    ]
  end

  def to_s
    "#{self.latitude}, #{self.longitude}"
  end

end
