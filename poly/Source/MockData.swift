//
//  MockData.swift
//  poly
//
//  Created by english on 2023-11-14.
//

import Foundation

class MockData {
    
    static var JSONdata = """
    {
       "code":1,
       "data":{
          "word":"aller",
          "fullDescription":"VERBE DU 3ième GROUPE | SE CONJUGUE AVEC L'AUXILIAIRE ÊTRE | VERBE MODÈLE | VERBE INTRANSITIF | Se conjugue également sous la forme pronominale s'en aller : je m'en vais, tu t'en vas... il s'en est allé,...",
          "wordVerbGroup":"VERBE DU 3ième GROUPE",
          "wordConjugateWithWhichVerb":"SE CONJUGUE AVEC L'AUXILIAIRE ÊTRE",
          "wordConjugateWhichVerbModel":"VERBE MODÈLE",
          "wordVerbType":"VERBE INTRANSITIF",
          "wordConjugateRule":"Se conjugue également sous la forme pronominale s'en aller : je m'en vais, tu t'en vas... il s'en est allé,...",
          "infinitive":{
             "present":"aller",
             "passe":"être allé"
          },
          "participe":{
             "present":"allant",
             "passe":"allé"
          },
          "indicatif":{
             "present":{
                "indicatifPresentI":"je vais",
                "indicatifPresentYou":"tu vas",
                "indicatifPresentHeSheIt":"il/elle/on va",
                "indicatifPresentWe":"nous allons",
                "indicatifPresentYouAll":"vous allez",
                "indicatifPresentThey":"ils/elles vont"
             },
             "passeSimple":{
                "indicatifPasseSimpleI":"j'allai",
                "indicatifPasseSimpleYou":"tu allas",
                "indicatifPasseSimpleHeSheIt":"il/elle/on alla",
                "indicatifPasseSimpleWe":"nous allâmes",
                "indicatifPasseSimpleYouAll":"vous allâtes",
                "indicatifPasseSimpleThey":"ils/elles allèrent"
             },
             "imparfait":{
                "indicatifImparfaitI":"j'allais",
                "indicatifImparfaitYou":"tu allais",
                "indicatifImparfaitHeSheIt":"il/elle/on allait",
                "indicatifImparfaitWe":"nous allions",
                "indicatifImparfaitYouAll":"vous alliez",
                "indicatifImparfaitThey":"ils/elles allaient"
             },
             "passeCompose":{
                "indicatifPasseComposeI":"je suis allé",
                "indicatifPasseComposeYou":"tu es allé",
                "indicatifPasseComposeHeSheIt":"il/elle/on est allé",
                "indicatifPasseComposeWe":"nous sommes allés",
                "indicatifPasseComposeYouAll":"vous êtes allés",
                "indicatifPasseComposeThey":"ils/elles sont allés"
             },
             "futurSimple":{
                "indicatifFuturSimpleI":"j'irai",
                "indicatifFuturSimpleYou":"tu iras",
                "indicatifFuturSimpleHeSheIt":"il/elle/on ira",
                "indicatifFuturSimpleWe":"nous irons",
                "indicatifFuturSimpleYouAll":"vous irez",
                "indicatifFuturSimpleThey":"ils/elles iront"
             },
             "passeAnterieur":{
                "indicatifPasseAnterieurI":"je fus allé",
                "indicatifPasseAnterieurYou":"tu fus allé",
                "indicatifPasseAnterieurHeSheIt":"il/elle/on fut allé",
                "indicatifPasseAnterieurWe":"nous fûmes allés",
                "indicatifPasseAnterieurYouAll":"vous fûtes allés",
                "indicatifPasseAnterieurThey":"ils/elles furent allés"
             },
             "plusQueParfait":{
                "indicatifPlusQueParfaitI":"j'étais allé",
                "indicatifPlusQueParfaitYou":"tu étais allé",
                "indicatifPlusQueParfaitHeSheIt":"il/elle/on était allé",
                "indicatifPlusQueParfaitWe":"nous étions allés",
                "indicatifPlusQueParfaitYouAll":"vous étiez allés",
                "indicatifPlusQueParfaitThey":"ils/elles étaient allés"
             },
             "futurAnterieur":{
                "indicatifFuturAnterieurI":"je serai allé",
                "indicatifFuturAnterieurYou":"tu seras allé",
                "indicatifFuturAnterieurHeSheIt":"il/elle/on sera allé",
                "indicatifFuturAnterieurWe":"nous serons allés",
                "indicatifFuturAnterieurYouAll":"vous serez allés",
                "indicatifFuturAnterieurThey":"ils/elles seront allés"
             }
          },
          "subjonctif":{
             "present":{
                "subjonctifPresentI":"que j'aille",
                "subjonctifPresentYou":"que tu ailles",
                "subjonctifPresentHeSheIt":"qu'il/elle/on ail/elle/onle",
                "subjonctifPresentWe":"que nous allions",
                "subjonctifPresentYouAll":"que vous alliez",
                "subjonctifPresentThey":"qu'ils/elles aillent"
             },
             "passe":{
                "subjonctifPasseI":"que je sois allé",
                "subjonctifPasseYou":"que tu sois allé",
                "subjonctifPasseHeSheIt":"qu'il/elle/on soit allé",
                "subjonctifPasseWe":"que nous soyons allés",
                "subjonctifPasseYouAll":"que vous soyez allés",
                "subjonctifPasseThey":"qu'ils/elles soient allés"
             },
             "imparfait":{
                "subjonctifImparfaitI":"que j'allasse",
                "subjonctifImparfaitYou":"que tu allasses",
                "subjonctifImparfaitHeSheIt":"qu'il/elle/on allât",
                "subjonctifImparfaitWe":"que nous allassions",
                "subjonctifImparfaitYouAll":"que vous allassiez",
                "subjonctifImparfaitThey":"qu'ils/elles allassent"
             },
             "plusQueParfait":{
                "subjonctifPlusQueParfaitI":"que je fusse allé",
                "subjonctifPlusQueParfaitYou":"que tu fusses allé",
                "subjonctifPlusQueParfaitHeSheIt":"qu'il/elle/on fût allé",
                "subjonctifPlusQueParfaitWe":"que nous fussions allés",
                "subjonctifPlusQueParfaitYouAll":"que vous fussiez allés",
                "subjonctifPlusQueParfaitThey":"qu'ils/elles fussent allés"
             }
          },
          "conditionnel":{
             "present":{
                "conditionnelPresentI":"j'irais",
                "conditionnelPresentYou":"tu irais",
                "conditionnelPresentHeSheIt":"il/elle/on irait",
                "conditionnelPresentWe":"nous irions",
                "conditionnelPresentYouAll":"vous iriez",
                "conditionnelPresentThey":"ils/elles iraient"
             },
             "passe1reForme":{
                "conditionnelPasse1reFormeI":"je serais allé",
                "conditionnelPasse1reFormeYou":"tu serais allé",
                "conditionnelPasse1reFormeHeSheIt":"il/elle/on serait allé",
                "conditionnelPasse1reFormeWe":"nous serions allés",
                "conditionnelPasse1reFormeYouAll":"vous seriez allés",
                "conditionnelPasse1reFormeThey":"ils/elles seraient allés"
             },
             "passe2eForme":{
                "conditionnelPasse2eFormeI":"je fusse allé",
                "conditionnelPasse2eFormeYou":"tu fusses allé",
                "conditionnelPasse2eFormeHeSheIt":"il/elle/on fût allé",
                "conditionnelPasse2eFormeWe":"nous fussions allés",
                "conditionnelPasse2eFormeYouAll":"vous fussiez allés",
                "conditionnelPasse2eFormeThey":"ils/elles fussent allés"
             }
          },
          "imperatif":{
             "present":{
                "imperatifPresentFirst":"va",
                "imperatifPresentSecond":"allez",
                "imperatifPresentThird":"allez"
             },
             "passe":{
                "imperatifPasseFirst":"sois allé",
                "imperatifPasseSecond":"soyez allés",
                "imperatifPasseThird":"soyez allés"
             }
          }
       },
       "message":"Successfull."
    }
    """
    
    static func readData() {
        if let jsonData = JSONdata.data(using: .utf8) {
            do {
                if let jsonDictionary = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any] {
                    print(jsonDictionary)
                } else {
                    print("Failed to convert JSON data to dictionary.")
                }
            } catch {
                print("Error deserializing JSON: \(error)")
            }
        } else {
            print("Failed to convert string to data.")
        }
    }
    
}
