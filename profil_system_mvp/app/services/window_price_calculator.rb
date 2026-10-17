class WindowPriceCalculator
  PROFILE_RATES = {
    "rehau_60"   => 750.0,
    "rehau_70"   => 1100.0,
    "salamander" => 1350.0,
    "wds_500"    => 650.0
  }.freeze

  GLASS_RATES = {
    "single"       => 800.0,
    "double"       => 1250.0,
    "energy_saver" => 1600.0
  }.freeze

  HARDWARE_RATES = {
    "siegenia" => 950.0,
    "roto"     => 850.0,
    "axor"     => 550.0
  }.freeze

  def self.calculate(params)
    width = params[:width].to_f
    height = params[:height].to_f

    return 0.0 if width < 400 || height < 400 || width > 3000 || height > 2800

    area = (width * height) / 1_000_000.0
    perimeter = (2 * (width + height)) / 1_000.0

    k_glass = GLASS_RATES.fetch(params[:glass_type], 1000.0)
    k_profile = PROFILE_RATES.fetch(params[:profile_system], 800.0)
    price_hardware = HARDWARE_RATES.fetch(params[:hardware], 600.0)
    k_install = params[:with_installation].to_s == "1" ? 1.20 : 1.0

    base_cost = (area * k_glass) + (perimeter * k_profile)
    ((base_cost * k_install) + price_hardware).round(2)
  end
end