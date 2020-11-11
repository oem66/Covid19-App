//
//  Constants.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import Foundation

class Constants {
    let defaultFont: String = "San Francisco"
    
    // MARK: -Symptoms text
    let sympthomText = """
        Most common symptoms:
        - fever
        - dry cough
        - tiredness
        
        Less common symptoms:
        - aches and pains
        - sore throat
        - diarrhoea
        - conjunctivitis
        - headache
        - loss of taste or smell
        - a rash on skin, or discolouration of fingers or toes
        
        Serious symptoms:
        - difficulty breathing or shortness of breath
        - chest pain or pressure
        - loss of speech or movement

        Seek immediate medical attention if you have serious symptoms.
        Always call before visiting your doctor or health facility.
        People with mild symptoms who are otherwise healthy should manage their symptoms at home.
        On average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days.
    """
    
    // MARK: -Prevention
    var preventionPhysicalDistance = """
    When going out in public, it is important to stay at least 6 feet away from other people and wear a mask to slow the spread of COVID-19. Consider the following tips for practicing social distancing when you decide to go out.
    
    - Know Before You Go: Before going out, know and follow the guidance from local public health authorities where you live.
    - Prepare for Transportation: Consider social distancing options to travel safely when running errands or commuting to and from work, whether walking, bicycling, wheelchair rolling, or using public transit, rideshares, or taxis. When using public transit, try to keep at least 6 feet from other passengers or transit operators – for example, when you are waiting at a bus station or selecting seats on a bus or train. When using rideshares or taxis, avoid pooled rides where multiple passengers are picked up, and sit in the back seat in larger vehicles so you can remain at least 6 feet away from the driver. Follow these additional tips to protect yourself while using transportation.
    - Limit Contact When Running Errands: Only visit stores selling household essentials in person when you absolutely need to, and stay at least 6 feet away from others who are not from your household while shopping and in lines. If possible, use drive-thru, curbside pick-up, or delivery services to limit face-to-face contact with others. Maintain physical distance between yourself and delivery service providers during exchanges and wear a mask.
    - Choose Safe Social Activities:It is possible to stay socially connected with friends and family who don’t live in your home by calling, using video chat, or staying connected through social media. If meeting others in person (e.g., at small outdoor gatherings, yard or driveway gathering with a small group of friends or family members), stay at least 6 feet from others who are not from your household. Follow these steps to stay safe if you will be participating in personal and social activities outside of your home.
    - Keep Distance at Events and Gatherings: It is safest to avoid crowded places and gatherings where it may be difficult to stay at least 6 feet away from others who are not from your household. If you are in a crowded space, try to keep 6 feet of space between yourself and others at all times, and wear a mask. Masks are especially important in times when physical distancing is difficult. Pay attention to any physical guides, such as tape markings on floors or signs on walls, directing attendees to remain at least 6 feet apart from each other in lines or at other times. Allow other people 6 feet of space when you pass by them in both indoor and outdoor settings.
    - Stay Distanced While Being Active: Consider going for a walk, bike ride, or wheelchair roll in your neighborhood or in another safe location where you can maintain at least 6 feet of distance between yourself and other pedestrians and cyclists. If you decide to visit a nearby park, trail, or recreational facility, first check for closures or restrictions. If open, consider how many other people might be there and choose a location where it will be possible to keep at least 6 feet of space between yourself and other people who are not from your household.

    Many people have personal circumstances or situations that present challenges with practicing social distancing to prevent the spread of COVID-19. Please see the following guidance for additional recommendations and considerations:
    """
    
    var preventionHygiene = """
    Personal hygiene
    Simple hygiene measures can help protect your family’s health and everyone else's.

    Don’t touch your face
    Avoid touching your eyes, nose and mouth.

    Don’t cough or sneeze into your hands
    Cover your mouth and nose with your elbow or tissue when coughing or sneezing. Dispose of used tissue immediately.

    Keep your distance
    Maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing.

    Wash, wash, wash your hands
    Yes, you’re hearing it everywhere, because it’s the best line of defence. Wash hands frequently with soap and water for at least 20-30 seconds.

    An easy way to time it with your children is by singing the full happy birthday song, twice.

    Make sure to wash hands after you blow your nose, sneeze into a tissue, use the restroom, when you leave and return to your home, before preparing or eating food, applying make-up, handling contact lenses etc.

    If using a hand sanitizer ensure that it contains at least 60 per cent alcohol, ensure coverage on all parts of the hands and rub hands together for 20-30 seconds until hands feel dry. If hands are visibly dirty, always wash hands with soap and water.

    Did you know? Cold water and warm water are equally effective at killing germs and viruses — as long as you use soap and wash your hands the right way!
    """
    
    var preventionUseMask = """
    If COVID-19 is spreading in your community, stay safe by taking some simple precautions, such as physical distancing, wearing a mask, keeping rooms well ventilated, avoiding crowds, cleaning your hands, and coughing into a bent elbow or tissue. Check local advice where you live and work. Do it all!

    Make wearing a mask a normal part of being around other people.

    Masks should be used as part of a comprehensive strategy of measures to suppress transmission and save lives; the use of a mask alone is not sufficient to provide an adequate level of protection against COVID-19

    Here are the basics of how to wear a mask:

    - Clean your hands before you put your mask on, as well as before and after you take it off.
    - Make sure it covers both your nose, mouth and chin.
    Here are some specifics on what type of mask to wear and when, depending on how much virus is circulating where you live, where you go and who you are.

    - Wear a fabric mask unless you’re in a particular risk group. This is especially important when you can’t stay physically distanced, particularly in crowded and poorly ventilated indoor settings.
    - Wear a medical/surgical mask if you:
        - Are over 60,
        - Have underlying medical conditions
        - Are feeling unwell, and/or
    looking after an ill family member.
    """
    
    var preventionCleanSurface = """
    - Start cleaning from cleaner areas and proceed towards dirtier areas. All surfaces that are frequently touched (e.g. door handles, armrests, table tops, light switches, water taps) need to be cleaned thoroughly and frequently.
    - In public premises where people touch the surfaces, the cleaning should be done daily at least. If possible even more often e.g. between 2-4 hours especially during the epidemic.
    - The public premises of workplaces must be cleaned using different equipment than the premises used by employees.
    - Use a mildly alkaline all-purpose detergent for cleaning. The cleaning of sanitary facilities can be enhanced by using a disinfectant.
    - Wear gloves to protect the hands when cleaning surfaces. Use tight-fitting disposable gloves, for example, as all-purpose gloves, or chemical resistant gloves. Learn more about the instructions on how to remove gloves (in Finnish). https://www.ttl.fi/wp-content/uploads/2016/11/Malliratkaisu_Kertakayttokasineiden_riisuminen.pdf
    - In particular, bins of bio- and mixed waste are coated with easily removable, leakproof bags in waste bins. Monitor waste bins and do not let them get more than three-quarters full.  Waste bins are emptied daily, especially in public premises. The collected bin bags must be closed tightly.
    - Carefully clean the equipment used in cleaning at the end of the cleaning process. Wash reusable cleaning cloths at a temperature of at least 90°C or disinfectant. Clean your keys, the handles of the cleaning cart and the floor cleaning equipment and the contact surfaces of the cleaner containers with the disinfecting multi-purpose cleaner.
    - After cleaning, the permanent gloves must either be carefully washed and dried. Disposable gloves are placed in mixed waste. Wash your hands up to your elbows with water and soap when the gloves are taken off.
    - Work clothes is changed to your own clothes before leaving the workplace. The work clothes must be washed at the workplace or your employer must acquire appropriate laundry services.
    """
    
    var preventionText = """
    People who felt unwell should stay home and see a doctor. This will help person get the right advice. When convalescing at home, people need to eat, sleep and use their own clothes with family members. In particular, if you feel short of breath, call a physician and seek treatment immediately.
    """
    
    // MARK: -Mask
    let overview = """
    - Wear masks with two or more layers to stop the spread of COVID-19
    - Wear the mask over your nose and mouth and secure it under your chin
    - Masks should be worn by people two years and older
    - Masks should NOT be worn by children younger than two, people who have trouble breathing, or people who cannot remove the mask without assistance
    - Do NOT wear masks intended for healthcare workers, for example, N95 respirators
    - CDC does not recommend the use of gaiters or face shields. Evaluation of these face covers is on-going but effectiveness is unknown at this time.
    - Evaluation of mask and gaiter materials and structure is ongoing.
    """
    
    let howToWearList = """
    - Be sure to wash your hands before putting on a mask
    - Do NOT touch the mask when wearing it
    """
    
    let doWearMaskThat = """
    - Covers your nose and mouth and secure it under your chin
    - Fits snugly against the sides of your face
    """
    
    let howToCleanList = """
    - Include your mask with your regular laundry
    - Use regular laundry detergent and the warmest appropriate water setting for the cloth used to make the mask
    - Use the highest heat setting and leave in the dryer until completely dry
    """
    
    // MARK: -Gloves
    let whenCleaningList = """
    Practice everyday preventive actions like keeping social distance (at least 6 feet) from others, washing your hands with soap and water for 20 seconds (or using a hand sanitizer with at least 60% alcohol), and wearing a mask when you have to go out in public.
    
    When cleaning:
    When you are routinely cleaning and disinfecting your home.

    - Follow precautions listed on the disinfectant product label, which may include
    - Wearing gloves (reusable or disposable)
    - Having good ventilation by turning on a fan or opening a window to get fresh air into the room you’re cleaning
    - Wash your hands after you have removed the gloves.
    """
    
    let whenCaringForSomeone = """
    - Use disposable gloves when cleaning and disinfecting the area around the person who is sick or other surfaces that may be frequently touched in the home.
    - Use disposable gloves when touching or having contact with blood, stool, or body fluids, such as saliva, mucus, vomit, and urine.
    - After using disposable gloves, throw them out in a lined trash can. Do not disinfect or reuse the gloves.
    - Wash your hands after you have removed the gloves.
    """
    
    let whenGlovesArentNedded = """
    - Wearing gloves outside of these instances (for example, when using a shopping cart or using an ATM) will not necessarily protect you from getting COVID-19 and may still lead to the spread of germs.
    - The best way to protect yourself from germs when running errands and after going out is to regularly wash your hands with soap and water for 20 seconds or use hand sanitizer with at least 60% alcohol.
    """
    
    let youCanProtectYourself = """
    COVID-19 is a respiratory virus and is mainly spread through droplets created when a person who is infected coughs, sneezes, or talks.
    You can protect yourself by

    - Keeping social distance (at least 6 feet) from others
    - Washing your hands with soap and water for 20 seconds (or using a hand sanitizer with at least 60% alcohol) at key times
    - Practicing everyday preventive actions
    """
    
    // MARK: -Alcohol
    let alcoholBackground = """
    There is much to learn about the novel coronavirus (SARS-CoV-2) that causes coronavirus disease 2019 (COVID-19). Based on what is currently known about COVID-19, spread from person-to-person of this virus happens most frequently among close contacts (within about 6 feet). This type of transmission occurs via respiratory droplets. On the other hand, transmission of novel coronavirus to persons from surfaces contaminated with the virus has not been documented. Recent studies indicate that people who are infected but do not have symptoms likely also play a role in the spread of COVID-19. Transmission of coronavirus occurs much more commonly through respiratory droplets than through objects and surfaces, like doorknobs, countertops, keyboards, toys, etc. Current evidence suggests that SARS-CoV-2 may remain viable for hours to days on surfaces made from a variety of materials. Cleaning of visibly dirty surfaces followed by disinfection is a best practice measure for prevention of COVID-19 and other viral respiratory illnesses in households and community settings.

    It is unknown how long the air inside a room occupied by someone with confirmed COVID-19 remains potentially infectious. Facilities will need to consider factors such as the size of the room and the ventilation system design (including flowrate [air changes per hour] and location of supply and exhaust vents) when deciding how long to close off rooms or areas used by ill persons before beginning disinfection.  Taking measures to improve ventilation in an area or room where someone was ill or suspected to be ill with COVID-19 will help shorten the time it takes respiratory droplets to be removed from the air.
    """
    
    let alcoholPurpose = """
    This guidance provides recommendations on the cleaning and disinfection of households where persons under investigation (PUI) or those with confirmed COVID-19 reside or may be in self- isolation. It is aimed at limiting the survival of the virus in the environments. These recommendations will be updated if additional information becomes available.

    These guidelines are focused on household settings and are meant for the general public.

    - Cleaning refers to the removal of germs, dirt, and impurities from surfaces. It does not kill germs, but by removing them, it lowers their numbers and the risk of spreading infection.
    - Disinfecting refers to using chemicals, for example, EPA-registered disinfectants, to kill germs on surfaces. This process does not necessarily clean dirty surfaces or remove germs, but by killing germs on a surface after cleaning, it can further lower the risk of spreading infection.
    """
    
    let alcoholGeneralRecommendations = """
    - Household members should educate themselves about COVID-19 symptoms and preventing the spread of COVID-19 in homes.
    - Clean and disinfect high-touch surfaces daily in household common areas (e.g. tables, hard-backed chairs, doorknobs, light switches, phones, tablets, touch screens, remote controls, keyboards, handles, desks, toilets, sinks)
    - In the bedroom/bathroom dedicated for an ill person: consider reducing cleaning frequency to as-needed (e.g., soiled items and surfaces) to avoid unnecessary contact with the ill person.
    - As much as possible, an ill person should stay in a specific room and away from other people in their home, following home care guidance.
    - The caregiver can provide personal cleaning supplies for an ill person’s room and bathroom, unless the room is occupied by child or another person for whom such supplies would not be appropriate. These supplies include tissues, paper towels, cleaners and EPA-registered disinfectants (see examplesexternal icon).
    - If a separate bathroom is not available, the bathroom should be cleaned and disinfected after each use by an ill person. If this is not possible, the caregiver should wait as long as practical after use by an ill person to clean and disinfect the high-touch surfaces.
    - Household members should follow home care guidance when interacting with persons with suspected/confirmed COVID-19 and their isolation rooms/bathrooms.
    """
    
    // MARK: -Soap
    let soapWashHands = """
    - Wash your hands often with soap and water for at least 20 seconds especially after you have been in a public place, or after blowing your nose, coughing, or sneezing.
    - It’s especially important to wash:
        Before eating or preparing food
        Before touching your face
        After using the restroom
        After leaving a public place
        After blowing your nose, coughing, or sneezing
        After handling your mask
        After changing a diaper
        After caring for someone sick
        After touching animals or pets

    - If soap and water are not readily available, use a hand sanitizer that contains at least 60% alcohol. Cover all surfaces of your hands and rub them together until they feel dry.
    - Avoid touching your eyes, nose, and mouth with unwashed hands.
    """
    
    let soapAvoidContact = """
    - Inside your home: Avoid close contact with people who are sick.
    - If possible, maintain 6 feet between the person who is sick and other household members.
    - Outside your home: Put 6 feet of distance between yourself and people who don’t live in your household.
    - Remember that some people without symptoms may be able to spread virus.
    - Stay at least 6 feet (about 2 arms’ length) from other people.
    - Keeping distance from others is especially important for people who are at higher risk of getting very sick.
    """
    
    let soapCoverMouth = """
    - You could spread COVID-19 to others even if you do not feel sick.
    - The mask is meant to protect other people in case you are infected.
    - Everyone should wear a mask in public settings and when around people who don’t live in your household, especially when other social distancing measures are difficult to maintain.
    - Masks should not be placed on young children under age 2, anyone who has trouble breathing, or is unconscious, incapacitated or otherwise unable to remove the mask without assistance.
    - Do NOT use a mask meant for a healthcare worker. Currently, surgical masks and N95 respirators are critical supplies that should be reserved for healthcare workers and other first responders.
    - Continue to keep about 6 feet between yourself and others. The mask is not a substitute for social distancing.
    """
    
    let soapCoverSneezes = """
    - Always cover your mouth and nose with a tissue when you cough or sneeze or use the inside of your elbow and do not spit.
    - Throw used tissues in the trash.
    - Immediately wash your hands with soap and water for at least 20 seconds. If soap and water are not readily available, clean your hands with a hand sanitizer that contains at least 60% alcohol.
    """
    
    let soapMonitorHealth = """
    - Be alert for symptoms. Watch for fever, cough, shortness of breath, or other symptoms of COVID-19.
    - Especially important if you are running essential errands, going into the office or workplace, and in settings where it may be difficult to keep a physical distance of 6 feet.
    - Take your temperature if symptoms develop.
    - Don’t take your temperature within 30 minutes of exercising or after taking medications that could lower your temperature, like acetaminophen.
    - Follow CDC guidance if symptoms develop.
    """
}
