(ns base
  (:require ["react_ujs" :as react-ujs]
            [reagent.core :as r]))

(defn base
  [{:keys [items]}]
  (defonce items-state (r/atom items))
  [:div
   [:ul
    (for [item @items-state]
      [:li {:key item} item])]])

(def ^:export base-component (r/reactify-component base))

(defn ^:dev/after-load mount-components
  []
  (.mountComponents react-ujs))


