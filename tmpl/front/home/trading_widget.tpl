<section class="relative md:py-24 py-16">
    <div class="container">
        <div class="grid md:grid-cols-12 grid-cols-1 items-center gap-[30px] relative">
            <div class="col-span-12">

                {literal}
                    <!-- TradingView Widget BEGIN -->
                    <div class="tradingview-widget-container">
                        <div class="tradingview-widget-container__widget"></div>
                        <div class="tradingview-widget-copyright"><a
                                href="https://www.tradingview.com/"
                                rel="noopener nofollow"
                                target="_blank"
                            ><span class="blue-text">Track all markets on TradingView</span></a></div>
                        <script
                            type="text/javascript"
                            src="https://s3.tradingview.com/external-embedding/embed-widget-screener.js"
                            async
                        >
                            {
                                "width": "100%",
                                "height": "1000",
                                "defaultColumn": "overview",
                                "screener_type": "crypto_mkt",
                                "displayCurrency": "USD",
                                "colorTheme": "dark",
                                "locale": "en",
                                "isTransparent": false
                            }
                        </script>
                    </div>
                    <!-- TradingView Widget END -->
                {/literal}


            </div>
        </div>
    </div>
</section>
