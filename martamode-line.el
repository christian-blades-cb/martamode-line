;; martamode-line.el --- MARTA train arrivals in your Emacs mode line

(require 'request)

(defgroup martaline nil
  "Customization options for the MARTAline minor mode"
  :prefix "martaline-")

(defcustom martaline-indicator-for-rail '("🚈" "Rail")
  "The unicode symbol and string to use for rail arrivals"
  :group 'martaline
  :tag "Indicator for rail arrivals"
  :type '(list (string :tag "Symbol")
               (string :tag "String")))

(defcustom martaline-rail-url
  "http://http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals"
  "URL for MARTA's API"
  :group 'martaline
  :tag "URL for MARTA's API"
  :type '(string))

(defcustom martaline-rail-station "MIDTOWN"
  "The station for which to show arrivals"
  :group 'martaline
  :tag "Station"
  :type '(choice (const :tag "Airport" "AIRPORT STATION")
                 (const :tag "Arts Center" "ARTS CENTER STATION")
                 (const :tag "Ashby" "ASHBY STATION")
                 (const :tag "Avondale" "AVONDALE STATION")
                 (const :tag "Bankhead" "BANKHEAD STATION")
                 (const :tag "Brookhaven" "BROOKHAVEN STATION")
                 (const :tag "Buckhead" "BUCKHEAD STATION")
                 (const :tag "Chamblee" "CHAMBLEE STATION")
                 (const :tag "Civic Center" "CIVIC CENTER STATION")
                 (const :tag "College Park" "COLLEGE PARK STATION")
                 (const :tag "Decatur" "DECATUR STATION")
                 (const :tag "Doraville" "DORAVILLE STATION")
                 (const :tag "Dunwoody" "DUNWOODY STATION")
                 (const :tag "East Lake" "EAST LAKE STATION")
                 (const :tag "East Point" "EAST POINT STATION")
                 (const :tag "Edgewood Candler Park" "EDGEWOOD CANDLER PARK STATION")
                 (const :tag "Five Points" "FIVE POINTS STATION")
                 (const :tag "Garnett" "GARNETT STATION")
                 (const :tag "Georgia State" "GEORGIA STATE STATION")
                 (const :tag "Indian Creek" "INDIAN CREEK STATION")
                 (const :tag "Inman Park" "INMAN PARK STATION")
                 (const :tag "Kensington" "KENSINGTON STATION")
                 (const :tag "King Memorial" "KING MEMORIAL STATION")
                 (const :tag "Lakewood" "LAKEWOOD STATION")
                 (const :tag "Lenox" "LENOX STATION")
                 (const :tag "Lindbergh" "LINDBERGH STATION")
                 (const :tag "Medical Center" "MEDICAL CENTER STATION")
                 (const :tag "Midtown" "MIDTOWN STATION")
                 (const :tag "North Ave" "NORTH AVE STATION")
                 (const :tag "North Springs" "North Springs ")
                 (Const :Tag "Oakland City" "OAKLAND CITY STATION")
                 (const :tag "Omni Dome" "OMNI DOME STATION")
                 (const :tag "Peachtree Center" "PEACHTREE CENTER STATION")
                 (const :tag "Sandy Springs" "SANDY SPRINGS STATION")
                 (const :tag "Vine City" "VINE CITY STATION")
                 (const :tag "West End" "WEST END STATION")
                 (const :tag "West Lake" "WEST LAKE STATION")))

(defcustom martaline-rail-line "GOLD"
  "Rail line for which to show arrivals"
  :group 'martaline
  :tag "Line"
  :type '(choice (const :tag "Blue" "BLUE")
                 (const :tag "Gold" "GOLD")
                 (const :tag "Green" "GREEN")
                 (const :tag "Red" "RED")
                 (const :tag "Any" nil)))

(defcustom martaline-rail-direction "N"
  "Direction of travel for which to show arrivals"
  :group 'martaline
  :tag "Direction"
  :type ('choice (const :tag "North" "N")
                 (const :tag "South" "S")
                 (const :tag "East" "E")
                 (const :tag "West" "W")))
