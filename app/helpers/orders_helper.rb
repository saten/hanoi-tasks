module OrdersHelper
  def beverage_options
    %w{coca fanta birra(33cl) acqua_minerale sprite }.collect{|a| a.upcase}
  end
  def pizza_options
    %w{ marinara margherita napoli pugliese tedesca siciliana pizza_dieta diavola miami_beach milanese
      prosciutto_cotto regina rucola patatina_fresca primo_amore parmigiana campagnola tonno_cipolla
      andrea bismark delizia ortolana paradiso romana mangia_taci capricciosa sara quattro_formaggi
      quattro_stagioni rustica egiziana prosciutto_crudo_o_speck aldo cannavaro totti messi bibo simpatia
      maya cleopatra sfiziosa cristina buffon boscaiola tirolese valtellina pizza_e_pizza gattuso
      donegani_6 marmar bufalina costa_azzurra mare_e_monti primavera olivia kebab }.collect{|a| a.upcase}
  end
end
