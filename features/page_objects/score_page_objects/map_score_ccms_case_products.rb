# This file contains page objects xpath for Score case Products page after Login

def map_score_ccms_case_products
  @page_objects['score_ccms_case_products'] =
      {
          'products:new product information'                          =>    "xpath^^.//*[@id='new-products-form']",
          'products:recalls'                                          =>    "xpath^^.//*[@id='symptoms-products-form']",
          'products:this product was imported into the u.s.-field'    =>    "xpath^^.//*[@for='Product_WasImported']",
          'products:country of origin-field'                          =>    "xpath^^.//*[@id='Product_OriginCountryListItemId']",
          'products:est. data not available-field'                    =>    "xpath^^.//*[@for='Product_IsEstablishmentDataNotAvailable']",
          'products:establishment lookup'                             =>    "xpath^^.//*[@id='open-establishment-search-button']",
          'products:set primary-field'                                =>    "xpath^^.//*[@id='set-establishment-primary-button']",
          'products:establishment lookup:lookup by-field'             =>    "xpath^^.//*[@id='search-establishment-by']",
          'products:establishment lookup:search value-field'          =>    "xpath^^.//*[@id='establishment-search-value']",
          'products:establishment lookup:search'                      =>    "xpath^^.//*[@id='establishment-search-button']",

          'products:establishment lookup:row 1:search result est state'       =>    "xpath^^.//*[@id='establishment-search-results']/tbody/tr[1]/td[2]",
          'products:establishment lookup:row 1:search result est number'      =>    "xpath^^.//*[@id='establishment-search-results']/tbody/tr[1]/td[3]",
          'products:establishment lookup:row 1:search result est district'    =>    "xpath^^.//*[@id='establishment-search-results']/tbody/tr[1]/td[4]",
          'products:establishment lookup:row 1:search result est name'        =>    "xpath^^.//*[@id='establishment-search-results']/tbody/tr[1]/td[5]",
          'products:establishment lookup:row 1:search result est closed'      =>    "xpath^^.//*[@id='establishment-search-results']/tbody/tr[1]/td[6]",

          'products:establishment lookup:select'            =>    "xpath^^.//*[@id='establishment-select']",
          'products:establishment lookup:cancel'            =>    "xpath^^.//*[@id='establishment-cancel']",
          'products:product brand unknown-field'            =>    "xpath^^.//*[@for='Product_IsProductBrandUnknown']",
          'products:product brand-field'                    =>    "xpath^^.//*[@id='Product_Brand']",
          'products:product name/type-field'                =>    "xpath^^.//*[@id='Product_NameAndOrType']",
          'products:processing type-field'                  =>    "xpath^^.//*[@id='Product_ProcessingTypeListItemId']",
          'products:original package-field'                 =>    "xpath^^.//*[@id='Product_OriginalPackageListItemId']",
          'products:product date type-field'                =>    "xpath^^.//*[@id='Product_DateTypeListItemId']",
          'products:date on package-field'                  =>    "xpath^^.//*[@id='Product_DateOnPackage']",
          'products:purchase date-field'                    =>    "xpath^^.//*[@id='Product_PurchaseDate']",
          'products:product remaining-field'                =>    "xpath^^.//*[@id='Product_ProductRemainingListItemId']",
          'products:package size-field'                     =>    "xpath^^.//*[@id='Product_PackageSize']",
          'products:lot number-field'                       =>    "xpath^^.//*[@id='Product_LotNumber']",
          'products:upc code-field'                         =>    "xpath^^.//*[@id='Product_UniversalProductCode']",
          'products:species-field'                          =>    "xpath^^.//*[@id='Product_Species']",
          'products:save'                                   =>    "xpath^^.//*[@id='editProductDialog']/following::button[text()='Save']",
          'products:cancel'                                 =>    "xpath^^.//*[@id='editProductDialog']/following::button[text()='Cancel']",

          # Point of Purchase form under Products page
          'products:point of purchase:first name'           =>    "xpath^^.//*[@id='Product_PointOfPurchase_FirstName']"
      }
end