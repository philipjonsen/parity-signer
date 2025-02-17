desc "Submit a new build to Apple TestFlight"
lane :upload_testflight do |options|
  upload_to_testflight(
    skip_waiting_for_build_processing: true,
    apple_id: "1218174838"
  )
end

desc "Load ASC API Key information to use in subsequent lanes"
lane :load_asc_api_key do
  app_store_connect_api_key(
    key_id: ENV.fetch("ASC_KEY_ID", nil),
    issuer_id: ENV.fetch("ASC_ISSUER_ID", nil),
    key_content: ENV.fetch("ASC_KEY_BASE64", nil),
    is_key_content_base64: true,
    in_house: false
   )
end
