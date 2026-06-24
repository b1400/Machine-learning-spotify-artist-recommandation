(deftemplate artiste-ecoute
   (slot nom (type STRING)))

(deftemplate recommandation
   (slot nom (type STRING))
   (slot confiance (type FLOAT)))

;Regles simples-------------
(defrule recommandation-lil-wayne
   (artiste-ecoute (nom "Lil Wayne"))
   =>
   (assert (recommandation (nom "JAY Z") (confiance 0.83)))
   (printout t "Logique Apriori : Artiste ecoute Lil Wayne -> Suggestion : JAY Z (Confiance: 83%)" crlf))


(defrule recommandation-kimya-dawson
   (artiste-ecoute (nom "Kimya Dawson"))
   =>
   (assert (recommandation (nom "Passenger") (confiance 0.81)))
   (printout t "Logique Apriori : Artiste ecoute Kimya Dawson -> Suggestion : Passenger (Confiance: 81%)" crlf))


(defrule recommandation-nsync
   (artiste-ecoute (nom "N Sync"))
   =>
   (assert (recommandation (nom "Britney Spears") (confiance 0.78)))
   (printout t "Logique Apriori : Artiste ecoute N Sync -> Suggestion : Britney Spears (Confiance: 78%)" crlf))


(defrule recommandation-kaiser-chiefs
   (artiste-ecoute (nom "Kaiser Chiefs"))
   =>
   (assert (recommandation (nom "The Black Keys") (confiance 0.77)))
   (printout t "Logique Apriori : Artiste ecoute Kaiser Chiefs -> Suggestion : The Black Keys (Confiance: 77%)" crlf))


(defrule recommandation-kimya-st-vincent
   (artiste-ecoute (nom "Kimya Dawson"))
   =>
   (assert (recommandation (nom "St. Vincent") (confiance 0.75)))
   (printout t "Logique Apriori : Artiste ecoute Kimya Dawson -> Suggestion : St. Vincent (Confiance: 75%)" crlf))


(defrule recommandation-schoolboy-q
   (artiste-ecoute (nom "Schoolboy Q"))
   =>
   (assert (recommandation (nom "Kendrick Lamar") (confiance 0.83)))
   (printout t "Logique Apriori : Artiste ecoute Schoolboy Q -> Suggestion : Kendrick Lamar (Confiance: 83%)" crlf))

;Regles complexes------

(defrule recommandation-pop-rock
   (artiste-ecoute (nom "Maroon 5"))
   (artiste-ecoute (nom "OneRepublic"))
   =>
   (assert (recommandation (nom "Coldplay") (confiance 1.0)))
   (printout t "Logique Apriori : Profil Maroon 5 + OneRepublic detecte -> Suggestion : Coldplay (Confiance: 100%)" crlf))


(defrule recommandation-edm
   (artiste-ecoute (nom "Avicii"))
   (artiste-ecoute (nom "Zedd"))
   =>
   (assert (recommandation (nom "Calvin Harris") (confiance 1.0)))
   (printout t "Logique Apriori : Profil EDM detecte -> Suggestion : Calvin Harris (Confiance: 100%)" crlf))


(defrule recommandation-divas-pop
   (artiste-ecoute (nom "Katy Perry"))
   (artiste-ecoute (nom "Beyoncé"))
   =>
   (assert (recommandation (nom "Rihanna") (confiance 0.92)))
   (printout t "Logique Apriori : Profil Divas Pop detecte -> Suggestion : Rihanna (Confiance: 92%)" crlf))


(defrule recommandation-indie-rock
   (artiste-ecoute (nom "The Killers"))
   (artiste-ecoute (nom "The Strokes"))
   =>
   (assert (recommandation (nom "Muse") (confiance 0.91)))
   (printout t "Logique Apriori : Profil Indie/Alternatif detecte -> Suggestion : Muse (Confiance: 91%)" crlf))

;Artistes écoutés-----
(deffacts etat-initial
   (artiste-ecoute (nom "Lil Wayne"))
   (artiste-ecoute (nom "Avicii"))
   (artiste-ecoute (nom "Zedd")))