# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Grain.create([
    {name:"Acid Malt",origin:"Germany",mash:true,color:3,power:0,potential:1.027,max:10,notes:"Acid malt contains acids from natural lactic acids. Used by German brewers to adjust malt PH without chemicals to adhere to German purity laws. Also enhances the head retention."},
    {name:"Acidulated (Weyermann)",origin:"Germany",mash:false,color:1.8,power:0,potential:1.030,max:10,notes:"Used in Germany to lower PH levels without resorting to chemicals. Lowers mash pH levels, lightens color, improves flavor stability."},
    {name:"Amber Malt",origin:"United Kingdom",mash:true,color:22,power:20,potential:1.035,max:20,notes:"Roasted specialty malt used in some English browns, milds and old ales to add color and a biscuit taste. Intense flavor - so limit use. Low diastatic power so must be mashed with well modified malts."},
])

Hop.create([
    {name:"Admiral",origin:"United Kingdom",hop_type:"Bittering",alpha:14.75,beta:5.60,notes:"Bittering hops derived from Wye Challenger. Good high-alpha bittering hops. Used for: Ales Aroma: Primarily for bittering Substitutes: Target, Northdown, Challenger"},
    {name:"Ahtanum",origin:"U.S.",hop_type:"Aroma",alpha:6.00,beta:5.25,notes:"Distinctive aromatic hops with moderate bittering power from Washington. Used for: American ales and lagers Aroma: Distinctive floral and citrus aromas Substitutes: Amarillo, Cascade"},
    {name:"Amarillo",origin:"U.S.",hop_type:"Aroma",alpha:8.50,beta:6.00,notes:"Unknown origin, but character similar to Cascade. Used for both bitterness and aroma. Used for: IPAs, Ales Aroma: Citrus, flowery Substitutes: Cascade, Centennial"}
])

Yeast.create([
    {name:"Nottingham Ale Yeast",lab:"White Labs",yeast_type:"Ale",form:"Liquid",temp_low:32,temp_high:32,attenuation:77.5,flocculation:"Low",notes:""},
    {name:"American Hefeweizen Ale WLP320",lab:"White Labs",yeast_type:"Ale",form:"Liquid",temp_low:65,temp_high:69,attenuation:76.0,flocculation:"Low",notes:""},
    {name:"WLP001 California Ale",lab:"White Labs",yeast_type:"Ale",form:"Liquid",temp_low:68,temp_high:73,attenuation:76.5,flocculation:"High",notes:"Very clean flavor, balance and stability. Accentuates hop flavor Versitile - can be used to make any style ale.  Best for: American Style Ales, Ambers, Pale Ales, Brown Ale, Strong Ale"}
])

Style.create([
    {
        name: "American Light Lager",
        overview: "Highly carbonated, very light-bodied, nearly flavorless lager designed to be consumed very cold. Very refreshing and thirst quenching.",
        ibu_low: 8,
        ibu_high: 12,
        srm_low: 2,
        srm_high: 3,
        og_low: 1.028,
        og_high: 1.040,
        fg_low: 0.998,
        fg_high: 1.008,
        alc_by_vol_low: 2.8,
        alc_by_vol_high: 4.2
    },
    {
        name: "Weizenbock",
        overview: "A strong, malty, fruity, wheat-based ale combining the best malt and yeast flavors of a weissbier (pale or dark) with the malty-rich flavor, strength, and body of a Dunkles Bock or Doppelbock.",
        ibu_low: 15,
        ibu_high: 30,
        srm_low: 6,
        srm_high: 25,
        og_low: 1.064,
        og_high: 1.090,
        fg_low: 1.015,
        fg_high: 1.022,
        alc_by_vol_low: 6.5,
        alc_by_vol_high: 9.0
    },
    {
        name: "English IPA",
        overview: "A hoppy, moderately-strong, very wellattenuated pale British ale with a dry finish and a hoppy aroma and flavor. Classic British ingredients provide the best flavor profile.",
        ibu_low: 40,
        ibu_high: 60,
        srm_low: 6,
        srm_high: 14,
        og_low: 1.050,
        og_high: 1.075,
        fg_low: 1.010,
        fg_high: 1.018,
        alc_by_vol_low: 5.0,
        alc_by_vol_high: 7.5
    }
])

Recipe.create([
    {name:"German Pilsner",volume:6.5,efficiency:68,description:"German Style Pilsner."},
    {name:"Melon Belgian Witbier",volume:6,efficiency:68,description:"Belgian Witbier using melon hops."},
    {name:"Tropical NEIPA",volume:6,efficiency:68,description:"New England IPA using tropical hops."}
])

puts "Seeded Database"

