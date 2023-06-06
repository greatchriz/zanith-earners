{literal}
<div class="card mt-4 pb-1 sm:mt-5 lg:mt-6">
    <div class="my-3 flex items-center justify-between px-4 sm:px-5">
        <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
            Watchlist
        </h2>
        <div
            x-data="usePopper({placement:'bottom-end',offset:4})"
            @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)"
            class="inline-flex"
        >
            <button
                x-ref="popperRef"
                @click="isShowPopper = !isShowPopper"
                class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
            >
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                    stroke-width="2"
                >
                    <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"
                    ></path>
                </svg>
            </button>

            <div
                x-ref="popperRoot"
                class="popper-root"
                :class="isShowPopper &amp;&amp; 'show'"
                style="position: fixed; inset: 0px 0px auto auto; margin: 0px; transform: translate(-78px, -613px);"
                data-popper-placement="bottom-end"
                data-popper-reference-hidden=""
                data-popper-escaped=""
            >
                <div
                    class="popper-box rounded-md border border-slate-150 bg-white py-1.5 font-inter dark:border-navy-500 dark:bg-navy-700">
                    <ul>
                        <li>
                            <a
                                href="#"
                                class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Action</a>
                        </li>
                        <li>
                            <a
                                href="#"
                                class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Another Action</a>
                        </li>
                        <li>
                            <a
                                href="#"
                                class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Something else</a>
                        </li>
                    </ul>
                    <div class="my-1 h-px bg-slate-150 dark:bg-navy-500"></div>
                    <ul>
                        <li>
                            <a
                                href="#"
                                class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Separated Link</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="scrollbar-sm flex space-x-4 overflow-x-auto overflow-y-hidden px-4 pb-2 sm:px-5">
        <div class="flex w-72 shrink-0 flex-col">
            <div class="flex items-center space-x-2">
                <img
                    class="h-6 w-6"
                    src="images/logos/bitcoin.svg"
                    alt="flag"
                >
                <div>
                    <span>Bitcoin</span>
                    <span class="text-xs uppercase text-slate-400 dark:text-navy-300">
                        btc
                    </span>
                </div>
            </div>

            <div class="mt-2.5 flex justify-between rounded-lg bg-slate-50 py-3 pr-3 dark:bg-navy-600">
                <div class="ax-transparent-gridline">
                    <div
                        x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoWatchlist1); $el._x_chart.render() });"
                        style="min-height: 60px;"
                    >
                        <div
                            id="apexchartsaje7l9ne"
                            class="apexcharts-canvas apexchartsaje7l9ne apexcharts-theme-light"
                            style="width: 120px; height: 60px;"
                        ><svg
                                id="SvgjsSvg1560"
                                width="120"
                                height="60"
                                xmlns="http://www.w3.org/2000/svg"
                                version="1.1"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                xmlns:svgjs="http://svgjs.dev"
                                class="apexcharts-svg apexcharts-zoomable"
                                xmlns:data="ApexChartsNS"
                                transform="translate(0, 0)"
                                style="background: transparent;"
                            >
                                <foreignObject
                                    x="0"
                                    y="0"
                                    width="120"
                                    height="60"
                                >
                                    <div
                                        class="apexcharts-legend"
                                        xmlns="http://www.w3.org/1999/xhtml"
                                        style="max-height: 30px;"
                                    ></div>
                                </foreignObject>
                                <rect
                                    id="SvgjsRect1564"
                                    width="0"
                                    height="0"
                                    x="0"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fefefe"
                                ></rect>
                                <g
                                    id="SvgjsG1594"
                                    class="apexcharts-yaxis"
                                    rel="0"
                                    transform="translate(-18, 0)"
                                ></g>
                                <g
                                    id="SvgjsG1562"
                                    class="apexcharts-inner apexcharts-graphical"
                                    transform="translate(0, 2)"
                                >
                                    <defs id="SvgjsDefs1561">
                                        <clipPath id="gridRectMaskaje7l9ne">
                                            <rect
                                                id="SvgjsRect1566"
                                                width="127"
                                                height="46"
                                                x="-3.5"
                                                y="-1.5"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="forecastMaskaje7l9ne"></clipPath>
                                        <clipPath id="nonForecastMaskaje7l9ne"></clipPath>
                                        <clipPath id="gridRectMarkerMaskaje7l9ne">
                                            <rect
                                                id="SvgjsRect1567"
                                                width="124"
                                                height="47"
                                                x="-2"
                                                y="-2"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="gridRectMaskjb0jky52g">
                                            <rect
                                                id="SvgjsRect1823"
                                                width="127"
                                                height="46"
                                                x="-3.5"
                                                y="-1.5"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="forecastMaskjb0jky52g"></clipPath>
                                        <clipPath id="nonForecastMaskjb0jky52g"></clipPath>
                                        <clipPath id="gridRectMarkerMaskjb0jky52g">
                                            <rect
                                                id="SvgjsRect1824"
                                                width="124"
                                                height="47"
                                                x="-2"
                                                y="-2"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                    </defs>
                                    <line
                                        id="SvgjsLine1565"
                                        x1="0"
                                        y1="0"
                                        x2="0"
                                        y2="43"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="3"
                                        stroke-linecap="butt"
                                        class="apexcharts-xcrosshairs"
                                        x="0"
                                        y="0"
                                        width="1"
                                        height="43"
                                        fill="#b1b9c4"
                                        filter="none"
                                        fill-opacity="0.9"
                                        stroke-width="1"
                                    ></line>
                                    <g
                                        id="SvgjsG1573"
                                        class="apexcharts-grid"
                                    >
                                        <g
                                            id="SvgjsG1574"
                                            class="apexcharts-gridlines-horizontal"
                                        >
                                            <line
                                                id="SvgjsLine1578"
                                                x1="0"
                                                y1="10.75"
                                                x2="120"
                                                y2="10.75"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1579"
                                                x1="0"
                                                y1="21.5"
                                                x2="120"
                                                y2="21.5"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1580"
                                                x1="0"
                                                y1="32.25"
                                                x2="120"
                                                y2="32.25"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                        </g>
                                        <g
                                            id="SvgjsG1575"
                                            class="apexcharts-gridlines-vertical"
                                        ></g>
                                        <line
                                            id="SvgjsLine1583"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                        <line
                                            id="SvgjsLine1582"
                                            x1="0"
                                            y1="1"
                                            x2="0"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                    </g>
                                    <g
                                        id="SvgjsG1568"
                                        class="apexcharts-line-series apexcharts-plot-series"
                                    >
                                        <g
                                            id="SvgjsG1569"
                                            class="apexcharts-series"
                                            seriesname="Stat"
                                            data:longestseries="true"
                                            rel="1"
                                            data:realindex="0"
                                        >
                                            <path
                                                id="SvgjsPath1572"
                                                d="M 0 41.925C 8.399999999999999 41.925 15.600000000000001 20.425 24 20.425C 32.4 20.425 39.6 37.5175 48 37.5175C 56.4 37.5175 63.6 13.975000000000001 72 13.975000000000001C 80.4 13.975000000000001 87.6 28.21875 96 28.21875C 104.4 28.21875 111.6 9.997500000000002 120 9.997500000000002"
                                                fill="none"
                                                fill-opacity="1"
                                                stroke="rgba(247,147,26,0.85)"
                                                stroke-opacity="1"
                                                stroke-linecap="butt"
                                                stroke-width="3"
                                                stroke-dasharray="0"
                                                class="apexcharts-line"
                                                index="0"
                                                clip-path="url(#gridRectMaskaje7l9ne)"
                                                pathto="M 0 41.925C 8.399999999999999 41.925 15.600000000000001 20.425 24 20.425C 32.4 20.425 39.6 37.5175 48 37.5175C 56.4 37.5175 63.6 13.975000000000001 72 13.975000000000001C 80.4 13.975000000000001 87.6 28.21875 96 28.21875C 104.4 28.21875 111.6 9.997500000000002 120 9.997500000000002"
                                                pathfrom="M -1 43 L -1 43 L 24 43 L 48 43 L 72 43 L 96 43 L 120 43"
                                                fill-rule="evenodd"
                                            ></path>
                                            <g
                                                id="SvgjsG1570"
                                                class="apexcharts-series-markers-wrap"
                                                data:realindex="0"
                                            >
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1598"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker w4nlud6gv no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#f7931a"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1855"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker wa90dh6m8j no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#f7931a"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                    <g
                                        id="SvgjsG1576"
                                        class="apexcharts-grid-borders"
                                    >
                                        <line
                                            id="SvgjsLine1577"
                                            x1="0"
                                            y1="0"
                                            x2="120"
                                            y2="0"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                        <line
                                            id="SvgjsLine1581"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                    </g>
                                    <line
                                        id="SvgjsLine1584"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="0"
                                        stroke-width="1"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs"
                                    ></line>
                                    <line
                                        id="SvgjsLine1585"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke-dasharray="0"
                                        stroke-width="0"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs-hidden"
                                    ></line>
                                    <g
                                        id="SvgjsG1586"
                                        class="apexcharts-xaxis"
                                        transform="translate(0, 0)"
                                    >
                                        <g
                                            id="SvgjsG1587"
                                            class="apexcharts-xaxis-texts-g"
                                            transform="translate(0, -4)"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1595"
                                        class="apexcharts-yaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1596"
                                        class="apexcharts-xaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1597"
                                        class="apexcharts-point-annotations"
                                    ></g>
                                    <rect
                                        id="SvgjsRect1599"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-zoom-rect"
                                    ></rect>
                                    <rect
                                        id="SvgjsRect1600"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-selection-rect"
                                    ></rect>
                                </g>
                            </svg>
                            <div class="apexcharts-tooltip apexcharts-theme-light">
                                <div
                                    class="apexcharts-tooltip-title"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                                <div
                                    class="apexcharts-tooltip-series-group"
                                    style="order: 1;"
                                ><span
                                        class="apexcharts-tooltip-marker"
                                        style="background-color: rgb(247, 147, 26);"
                                    ></span>
                                    <div
                                        class="apexcharts-tooltip-text"
                                        style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                    >
                                        <div class="apexcharts-tooltip-y-group"><span
                                                class="apexcharts-tooltip-text-y-label"
                                            ></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                        <div class="apexcharts-tooltip-goals-group"><span
                                                class="apexcharts-tooltip-text-goals-label"
                                            ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                        <div class="apexcharts-tooltip-z-group"><span
                                                class="apexcharts-tooltip-text-z-label"
                                            ></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                    </div>
                                </div>
                                <div
                                    class="apexcharts-tooltip-series-group"
                                    style="order: 1;"
                                ><span
                                        class="apexcharts-tooltip-marker"
                                        style="background-color: rgb(247, 147, 26);"
                                    ></span>
                                    <div
                                        class="apexcharts-tooltip-text"
                                        style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                    >
                                        <div class="apexcharts-tooltip-y-group"><span
                                                class="apexcharts-tooltip-text-y-label"
                                            ></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                        <div class="apexcharts-tooltip-goals-group"><span
                                                class="apexcharts-tooltip-text-goals-label"
                                            ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                        <div class="apexcharts-tooltip-z-group"><span
                                                class="apexcharts-tooltip-text-z-label"
                                            ></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                <div
                                    class="apexcharts-xaxistooltip-text"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                            </div>
                            <div
                                class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                <div class="apexcharts-yaxistooltip-text"></div>
                            </div>
                        </div>
                        <div
                            id="apexchartsjb0jky52g"
                            class="apexcharts-canvas apexchartsjb0jky52g apexcharts-theme-light"
                            style="width: 120px; height: 60px;"
                        ><svg
                                id="SvgjsSvg1817"
                                width="120"
                                height="60"
                                xmlns="http://www.w3.org/2000/svg"
                                version="1.1"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                xmlns:svgjs="http://svgjs.dev"
                                class="apexcharts-svg apexcharts-zoomable"
                                xmlns:data="ApexChartsNS"
                                transform="translate(0, 0)"
                                style="background: transparent;"
                            >
                                <foreignObject
                                    x="0"
                                    y="0"
                                    width="120"
                                    height="60"
                                >
                                    <div
                                        class="apexcharts-legend"
                                        xmlns="http://www.w3.org/1999/xhtml"
                                        style="max-height: 30px;"
                                    ></div>
                                </foreignObject>
                                <rect
                                    id="SvgjsRect1821"
                                    width="0"
                                    height="0"
                                    x="0"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fefefe"
                                ></rect>
                                <g
                                    id="SvgjsG1851"
                                    class="apexcharts-yaxis"
                                    rel="0"
                                    transform="translate(-18, 0)"
                                ></g>
                                <g
                                    id="SvgjsG1819"
                                    class="apexcharts-inner apexcharts-graphical"
                                    transform="translate(0, 2)"
                                >
                                    <defs id="SvgjsDefs1818"></defs>
                                    <line
                                        id="SvgjsLine1822"
                                        x1="0"
                                        y1="0"
                                        x2="0"
                                        y2="43"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="3"
                                        stroke-linecap="butt"
                                        class="apexcharts-xcrosshairs"
                                        x="0"
                                        y="0"
                                        width="1"
                                        height="43"
                                        fill="#b1b9c4"
                                        filter="none"
                                        fill-opacity="0.9"
                                        stroke-width="1"
                                    ></line>
                                    <g
                                        id="SvgjsG1830"
                                        class="apexcharts-grid"
                                    >
                                        <g
                                            id="SvgjsG1831"
                                            class="apexcharts-gridlines-horizontal"
                                        >
                                            <line
                                                id="SvgjsLine1835"
                                                x1="0"
                                                y1="10.75"
                                                x2="120"
                                                y2="10.75"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1836"
                                                x1="0"
                                                y1="21.5"
                                                x2="120"
                                                y2="21.5"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1837"
                                                x1="0"
                                                y1="32.25"
                                                x2="120"
                                                y2="32.25"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                        </g>
                                        <g
                                            id="SvgjsG1832"
                                            class="apexcharts-gridlines-vertical"
                                        ></g>
                                        <line
                                            id="SvgjsLine1840"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                        <line
                                            id="SvgjsLine1839"
                                            x1="0"
                                            y1="1"
                                            x2="0"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                    </g>
                                    <g
                                        id="SvgjsG1825"
                                        class="apexcharts-line-series apexcharts-plot-series"
                                    >
                                        <g
                                            id="SvgjsG1826"
                                            class="apexcharts-series"
                                            seriesName="Stat"
                                            data:longestSeries="true"
                                            rel="1"
                                            data:realIndex="0"
                                        >
                                            <path
                                                id="SvgjsPath1829"
                                                d="M0 41.925C8.399999999999999 41.925 15.600000000000001 20.425 24 20.425C32.4 20.425 39.6 37.5175 48 37.5175C56.4 37.5175 63.6 13.975000000000001 72 13.975000000000001C80.4 13.975000000000001 87.6 28.21875 96 28.21875C104.4 28.21875 111.6 9.997500000000002 120 9.997500000000002C120 9.997500000000002 120 9.997500000000002 120 9.997500000000002 "
                                                fill="none"
                                                fill-opacity="1"
                                                stroke="rgba(247,147,26,0.85)"
                                                stroke-opacity="1"
                                                stroke-linecap="butt"
                                                stroke-width="3"
                                                stroke-dasharray="0"
                                                class="apexcharts-line"
                                                index="0"
                                                clip-path="url(#gridRectMaskjb0jky52g)"
                                                pathTo="M 0 41.925C 8.399999999999999 41.925 15.600000000000001 20.425 24 20.425C 32.4 20.425 39.6 37.5175 48 37.5175C 56.4 37.5175 63.6 13.975000000000001 72 13.975000000000001C 80.4 13.975000000000001 87.6 28.21875 96 28.21875C 104.4 28.21875 111.6 9.997500000000002 120 9.997500000000002"
                                                pathFrom="M -1 43 L -1 43 L 24 43 L 48 43 L 72 43 L 96 43 L 120 43"
                                                fill-rule="evenodd"
                                            ></path>
                                            <g
                                                id="SvgjsG1827"
                                                class="apexcharts-series-markers-wrap"
                                                data:realIndex="0"
                                            >
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1856"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker wmqchkuh3 no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#f7931a"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                            </g>
                                        </g>
                                        <g
                                            id="SvgjsG1571"
                                            class="apexcharts-datalabels"
                                            data:realindex="0"
                                        ></g>
                                        <g
                                            id="SvgjsG1828"
                                            class="apexcharts-datalabels"
                                            data:realIndex="0"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1833"
                                        class="apexcharts-grid-borders"
                                    >
                                        <line
                                            id="SvgjsLine1834"
                                            x1="0"
                                            y1="0"
                                            x2="120"
                                            y2="0"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                        <line
                                            id="SvgjsLine1838"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                    </g>
                                    <line
                                        id="SvgjsLine1841"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="0"
                                        stroke-width="1"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs"
                                    ></line>
                                    <line
                                        id="SvgjsLine1842"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke-dasharray="0"
                                        stroke-width="0"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs-hidden"
                                    ></line>
                                    <g
                                        id="SvgjsG1843"
                                        class="apexcharts-xaxis"
                                        transform="translate(0, 0)"
                                    >
                                        <g
                                            id="SvgjsG1844"
                                            class="apexcharts-xaxis-texts-g"
                                            transform="translate(0, -4)"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1852"
                                        class="apexcharts-yaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1853"
                                        class="apexcharts-xaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1854"
                                        class="apexcharts-point-annotations"
                                    ></g>
                                    <rect
                                        id="SvgjsRect1857"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-zoom-rect"
                                    ></rect>
                                    <rect
                                        id="SvgjsRect1858"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-selection-rect"
                                    ></rect>
                                </g>
                            </svg>
                            <div class="apexcharts-tooltip apexcharts-theme-light">
                                <div
                                    class="apexcharts-tooltip-title"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                            </div>
                            <div
                                class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                <div class="apexcharts-yaxistooltip-text"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flex w-36 flex-col items-center rounded-lg bg-slate-100 py-2 font-inter dark:bg-navy-500">
                    <p class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                        $31,566.11
                    </p>
                    <p class="mt-1 flex items-center space-x-0.5 text-xs text-success">
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4 w-4"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="currentColor"
                        >
                            <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M7 11l5-5m0 0l5 5m-5-5v12"
                            ></path>
                        </svg>
                        <span>4.3%</span>
                    </p>
                </div>
            </div>
        </div>
        <div class="flex w-72 shrink-0 flex-col">
            <div class="flex items-center space-x-2">
                <img
                    class="h-6 w-6"
                    src="images/logos/ethereum.svg"
                    alt="flag"
                >
                <div>
                    <span>Ethereum</span>
                    <span class="text-xs uppercase text-slate-400 dark:text-navy-300">
                        ETH
                    </span>
                </div>
            </div>

            <div class="mt-2.5 flex justify-between rounded-lg bg-slate-50 py-3 pr-3 dark:bg-navy-600">
                <div class="ax-transparent-gridline">
                    <div
                        x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoWatchlist2); $el._x_chart.render() });"
                        style="min-height: 60px;"
                    >
                        <div
                            id="apexcharts1lxsuyyd"
                            class="apexcharts-canvas apexcharts1lxsuyyd apexcharts-theme-light"
                            style="width: 120px; height: 60px;"
                        ><svg
                                id="SvgjsSvg1602"
                                width="120"
                                height="60"
                                xmlns="http://www.w3.org/2000/svg"
                                version="1.1"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                xmlns:svgjs="http://svgjs.dev"
                                class="apexcharts-svg apexcharts-zoomable"
                                xmlns:data="ApexChartsNS"
                                transform="translate(0, 0)"
                                style="background: transparent;"
                            >
                                <foreignObject
                                    x="0"
                                    y="0"
                                    width="120"
                                    height="60"
                                >
                                    <div
                                        class="apexcharts-legend"
                                        xmlns="http://www.w3.org/1999/xhtml"
                                        style="max-height: 30px;"
                                    ></div>
                                </foreignObject>
                                <rect
                                    id="SvgjsRect1606"
                                    width="0"
                                    height="0"
                                    x="0"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fefefe"
                                ></rect>
                                <g
                                    id="SvgjsG1636"
                                    class="apexcharts-yaxis"
                                    rel="0"
                                    transform="translate(-18, 0)"
                                ></g>
                                <g
                                    id="SvgjsG1604"
                                    class="apexcharts-inner apexcharts-graphical"
                                    transform="translate(0, 2)"
                                >
                                    <defs id="SvgjsDefs1603">
                                        <clipPath id="gridRectMask1lxsuyyd">
                                            <rect
                                                id="SvgjsRect1608"
                                                width="127"
                                                height="46"
                                                x="-3.5"
                                                y="-1.5"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="forecastMask1lxsuyyd"></clipPath>
                                        <clipPath id="nonForecastMask1lxsuyyd"></clipPath>
                                        <clipPath id="gridRectMarkerMask1lxsuyyd">
                                            <rect
                                                id="SvgjsRect1609"
                                                width="124"
                                                height="47"
                                                x="-2"
                                                y="-2"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="gridRectMaskuh4bhlth">
                                            <rect
                                                id="SvgjsRect1865"
                                                width="127"
                                                height="46"
                                                x="-3.5"
                                                y="-1.5"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="forecastMaskuh4bhlth"></clipPath>
                                        <clipPath id="nonForecastMaskuh4bhlth"></clipPath>
                                        <clipPath id="gridRectMarkerMaskuh4bhlth">
                                            <rect
                                                id="SvgjsRect1866"
                                                width="124"
                                                height="47"
                                                x="-2"
                                                y="-2"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                    </defs>
                                    <line
                                        id="SvgjsLine1607"
                                        x1="0"
                                        y1="0"
                                        x2="0"
                                        y2="43"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="3"
                                        stroke-linecap="butt"
                                        class="apexcharts-xcrosshairs"
                                        x="0"
                                        y="0"
                                        width="1"
                                        height="43"
                                        fill="#b1b9c4"
                                        filter="none"
                                        fill-opacity="0.9"
                                        stroke-width="1"
                                    ></line>
                                    <g
                                        id="SvgjsG1615"
                                        class="apexcharts-grid"
                                    >
                                        <g
                                            id="SvgjsG1616"
                                            class="apexcharts-gridlines-horizontal"
                                        >
                                            <line
                                                id="SvgjsLine1620"
                                                x1="0"
                                                y1="8.6"
                                                x2="120"
                                                y2="8.6"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1621"
                                                x1="0"
                                                y1="17.2"
                                                x2="120"
                                                y2="17.2"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1622"
                                                x1="0"
                                                y1="25.799999999999997"
                                                x2="120"
                                                y2="25.799999999999997"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1623"
                                                x1="0"
                                                y1="34.4"
                                                x2="120"
                                                y2="34.4"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                        </g>
                                        <g
                                            id="SvgjsG1617"
                                            class="apexcharts-gridlines-vertical"
                                        ></g>
                                        <line
                                            id="SvgjsLine1626"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                        <line
                                            id="SvgjsLine1625"
                                            x1="0"
                                            y1="1"
                                            x2="0"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                    </g>
                                    <g
                                        id="SvgjsG1610"
                                        class="apexcharts-line-series apexcharts-plot-series"
                                    >
                                        <g
                                            id="SvgjsG1611"
                                            class="apexcharts-series"
                                            seriesname="Stat"
                                            data:longestseries="true"
                                            rel="1"
                                            data:realindex="0"
                                        >
                                            <path
                                                id="SvgjsPath1614"
                                                d="M 0 19.78C 10.5 19.78 19.5 9.89 30 9.89C 40.5 9.89 49.5 24.51 60 24.51C 70.5 24.51 79.5 13.330000000000002 90 13.330000000000002C 100.5 13.330000000000002 109.5 37.84 120 37.84"
                                                fill="none"
                                                fill-opacity="1"
                                                stroke="rgba(98,126,234,0.85)"
                                                stroke-opacity="1"
                                                stroke-linecap="butt"
                                                stroke-width="3"
                                                stroke-dasharray="0"
                                                class="apexcharts-line"
                                                index="0"
                                                clip-path="url(#gridRectMask1lxsuyyd)"
                                                pathto="M 0 19.78C 10.5 19.78 19.5 9.89 30 9.89C 40.5 9.89 49.5 24.51 60 24.51C 70.5 24.51 79.5 13.330000000000002 90 13.330000000000002C 100.5 13.330000000000002 109.5 37.84 120 37.84"
                                                pathfrom="M -1 43 L -1 43 L 30 43 L 60 43 L 90 43 L 120 43"
                                                fill-rule="evenodd"
                                            ></path>
                                            <g
                                                id="SvgjsG1612"
                                                class="apexcharts-series-markers-wrap"
                                                data:realindex="0"
                                            >
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1640"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker widm59vhj no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#627eea"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1897"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker whsy9li2w no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#627eea"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                    <g
                                        id="SvgjsG1618"
                                        class="apexcharts-grid-borders"
                                    >
                                        <line
                                            id="SvgjsLine1619"
                                            x1="0"
                                            y1="0"
                                            x2="120"
                                            y2="0"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                        <line
                                            id="SvgjsLine1624"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                    </g>
                                    <line
                                        id="SvgjsLine1627"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="0"
                                        stroke-width="1"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs"
                                    ></line>
                                    <line
                                        id="SvgjsLine1628"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke-dasharray="0"
                                        stroke-width="0"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs-hidden"
                                    ></line>
                                    <g
                                        id="SvgjsG1629"
                                        class="apexcharts-xaxis"
                                        transform="translate(0, 0)"
                                    >
                                        <g
                                            id="SvgjsG1630"
                                            class="apexcharts-xaxis-texts-g"
                                            transform="translate(0, -4)"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1637"
                                        class="apexcharts-yaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1638"
                                        class="apexcharts-xaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1639"
                                        class="apexcharts-point-annotations"
                                    ></g>
                                    <rect
                                        id="SvgjsRect1641"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-zoom-rect"
                                    ></rect>
                                    <rect
                                        id="SvgjsRect1642"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-selection-rect"
                                    ></rect>
                                </g>
                            </svg>
                            <div class="apexcharts-tooltip apexcharts-theme-light">
                                <div
                                    class="apexcharts-tooltip-title"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                                <div
                                    class="apexcharts-tooltip-series-group"
                                    style="order: 1;"
                                ><span
                                        class="apexcharts-tooltip-marker"
                                        style="background-color: rgb(98, 126, 234);"
                                    ></span>
                                    <div
                                        class="apexcharts-tooltip-text"
                                        style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                    >
                                        <div class="apexcharts-tooltip-y-group"><span
                                                class="apexcharts-tooltip-text-y-label"
                                            ></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                        <div class="apexcharts-tooltip-goals-group"><span
                                                class="apexcharts-tooltip-text-goals-label"
                                            ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                        <div class="apexcharts-tooltip-z-group"><span
                                                class="apexcharts-tooltip-text-z-label"
                                            ></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                    </div>
                                </div>
                                <div
                                    class="apexcharts-tooltip-series-group"
                                    style="order: 1;"
                                ><span
                                        class="apexcharts-tooltip-marker"
                                        style="background-color: rgb(98, 126, 234);"
                                    ></span>
                                    <div
                                        class="apexcharts-tooltip-text"
                                        style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                    >
                                        <div class="apexcharts-tooltip-y-group"><span
                                                class="apexcharts-tooltip-text-y-label"
                                            ></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                        <div class="apexcharts-tooltip-goals-group"><span
                                                class="apexcharts-tooltip-text-goals-label"
                                            ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                        <div class="apexcharts-tooltip-z-group"><span
                                                class="apexcharts-tooltip-text-z-label"
                                            ></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                <div
                                    class="apexcharts-xaxistooltip-text"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                            </div>
                            <div
                                class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                <div class="apexcharts-yaxistooltip-text"></div>
                            </div>
                        </div>
                        <div
                            id="apexchartsuh4bhlth"
                            class="apexcharts-canvas apexchartsuh4bhlth apexcharts-theme-light"
                            style="width: 120px; height: 60px;"
                        ><svg
                                id="SvgjsSvg1859"
                                width="120"
                                height="60"
                                xmlns="http://www.w3.org/2000/svg"
                                version="1.1"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                xmlns:svgjs="http://svgjs.dev"
                                class="apexcharts-svg apexcharts-zoomable"
                                xmlns:data="ApexChartsNS"
                                transform="translate(0, 0)"
                                style="background: transparent;"
                            >
                                <foreignObject
                                    x="0"
                                    y="0"
                                    width="120"
                                    height="60"
                                >
                                    <div
                                        class="apexcharts-legend"
                                        xmlns="http://www.w3.org/1999/xhtml"
                                        style="max-height: 30px;"
                                    ></div>
                                </foreignObject>
                                <rect
                                    id="SvgjsRect1863"
                                    width="0"
                                    height="0"
                                    x="0"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fefefe"
                                ></rect>
                                <g
                                    id="SvgjsG1893"
                                    class="apexcharts-yaxis"
                                    rel="0"
                                    transform="translate(-18, 0)"
                                ></g>
                                <g
                                    id="SvgjsG1861"
                                    class="apexcharts-inner apexcharts-graphical"
                                    transform="translate(0, 2)"
                                >
                                    <defs id="SvgjsDefs1860"></defs>
                                    <line
                                        id="SvgjsLine1864"
                                        x1="0"
                                        y1="0"
                                        x2="0"
                                        y2="43"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="3"
                                        stroke-linecap="butt"
                                        class="apexcharts-xcrosshairs"
                                        x="0"
                                        y="0"
                                        width="1"
                                        height="43"
                                        fill="#b1b9c4"
                                        filter="none"
                                        fill-opacity="0.9"
                                        stroke-width="1"
                                    ></line>
                                    <g
                                        id="SvgjsG1872"
                                        class="apexcharts-grid"
                                    >
                                        <g
                                            id="SvgjsG1873"
                                            class="apexcharts-gridlines-horizontal"
                                        >
                                            <line
                                                id="SvgjsLine1877"
                                                x1="0"
                                                y1="8.6"
                                                x2="120"
                                                y2="8.6"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1878"
                                                x1="0"
                                                y1="17.2"
                                                x2="120"
                                                y2="17.2"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1879"
                                                x1="0"
                                                y1="25.799999999999997"
                                                x2="120"
                                                y2="25.799999999999997"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1880"
                                                x1="0"
                                                y1="34.4"
                                                x2="120"
                                                y2="34.4"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                        </g>
                                        <g
                                            id="SvgjsG1874"
                                            class="apexcharts-gridlines-vertical"
                                        ></g>
                                        <line
                                            id="SvgjsLine1883"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                        <line
                                            id="SvgjsLine1882"
                                            x1="0"
                                            y1="1"
                                            x2="0"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                    </g>
                                    <g
                                        id="SvgjsG1867"
                                        class="apexcharts-line-series apexcharts-plot-series"
                                    >
                                        <g
                                            id="SvgjsG1868"
                                            class="apexcharts-series"
                                            seriesName="Stat"
                                            data:longestSeries="true"
                                            rel="1"
                                            data:realIndex="0"
                                        >
                                            <path
                                                id="SvgjsPath1871"
                                                d="M0 19.78C10.5 19.78 19.5 9.89 30 9.89C40.5 9.89 49.5 24.51 60 24.51C70.5 24.51 79.5 13.330000000000002 90 13.330000000000002C100.5 13.330000000000002 109.5 37.84 120 37.84C120 37.84 120 37.84 120 37.84 "
                                                fill="none"
                                                fill-opacity="1"
                                                stroke="rgba(98,126,234,0.85)"
                                                stroke-opacity="1"
                                                stroke-linecap="butt"
                                                stroke-width="3"
                                                stroke-dasharray="0"
                                                class="apexcharts-line"
                                                index="0"
                                                clip-path="url(#gridRectMaskuh4bhlth)"
                                                pathTo="M 0 19.78C 10.5 19.78 19.5 9.89 30 9.89C 40.5 9.89 49.5 24.51 60 24.51C 70.5 24.51 79.5 13.330000000000002 90 13.330000000000002C 100.5 13.330000000000002 109.5 37.84 120 37.84"
                                                pathFrom="M -1 43 L -1 43 L 30 43 L 60 43 L 90 43 L 120 43"
                                                fill-rule="evenodd"
                                            ></path>
                                            <g
                                                id="SvgjsG1869"
                                                class="apexcharts-series-markers-wrap"
                                                data:realIndex="0"
                                            >
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1898"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker wpgu1lhna no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#627eea"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                            </g>
                                        </g>
                                        <g
                                            id="SvgjsG1613"
                                            class="apexcharts-datalabels"
                                            data:realindex="0"
                                        ></g>
                                        <g
                                            id="SvgjsG1870"
                                            class="apexcharts-datalabels"
                                            data:realIndex="0"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1875"
                                        class="apexcharts-grid-borders"
                                    >
                                        <line
                                            id="SvgjsLine1876"
                                            x1="0"
                                            y1="0"
                                            x2="120"
                                            y2="0"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                        <line
                                            id="SvgjsLine1881"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                    </g>
                                    <line
                                        id="SvgjsLine1884"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="0"
                                        stroke-width="1"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs"
                                    ></line>
                                    <line
                                        id="SvgjsLine1885"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke-dasharray="0"
                                        stroke-width="0"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs-hidden"
                                    ></line>
                                    <g
                                        id="SvgjsG1886"
                                        class="apexcharts-xaxis"
                                        transform="translate(0, 0)"
                                    >
                                        <g
                                            id="SvgjsG1887"
                                            class="apexcharts-xaxis-texts-g"
                                            transform="translate(0, -4)"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1894"
                                        class="apexcharts-yaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1895"
                                        class="apexcharts-xaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1896"
                                        class="apexcharts-point-annotations"
                                    ></g>
                                    <rect
                                        id="SvgjsRect1899"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-zoom-rect"
                                    ></rect>
                                    <rect
                                        id="SvgjsRect1900"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-selection-rect"
                                    ></rect>
                                </g>
                            </svg>
                            <div class="apexcharts-tooltip apexcharts-theme-light">
                                <div
                                    class="apexcharts-tooltip-title"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                            </div>
                            <div
                                class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                <div class="apexcharts-yaxistooltip-text"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flex w-36 flex-col items-center rounded-lg bg-slate-100 py-2 font-inter dark:bg-navy-500">
                    <p class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                        $7,668.56
                    </p>
                    <p class="mt-1 flex items-center space-x-0.5 text-xs text-error">
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4 w-4"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="currentColor"
                        >
                            <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M17 13l-5 5m0 0l-5-5m5 5V6"
                            ></path>
                        </svg>
                        <span>6.53%</span>
                    </p>
                </div>
            </div>
        </div>
        <div class="flex w-72 shrink-0 flex-col">
            <div class="flex items-center space-x-2">
                <img
                    class="h-6 w-6"
                    src="images/logos/solana.svg"
                    alt="flag"
                >
                <div>
                    <span>Solana</span>
                    <span class="text-xs uppercase text-slate-400 dark:text-navy-300">
                        SOl
                    </span>
                </div>
            </div>

            <div class="mt-2.5 flex justify-between rounded-lg bg-slate-50 py-3 pr-3 dark:bg-navy-600">
                <div class="ax-transparent-gridline">
                    <div
                        x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoWatchlist3); $el._x_chart.render() });"
                        style="min-height: 60px;"
                    >
                        <div
                            id="apexchartsq8q2kx46"
                            class="apexcharts-canvas apexchartsq8q2kx46 apexcharts-theme-light"
                            style="width: 120px; height: 60px;"
                        ><svg
                                id="SvgjsSvg1644"
                                width="120"
                                height="60"
                                xmlns="http://www.w3.org/2000/svg"
                                version="1.1"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                xmlns:svgjs="http://svgjs.dev"
                                class="apexcharts-svg apexcharts-zoomable"
                                xmlns:data="ApexChartsNS"
                                transform="translate(0, 0)"
                                style="background: transparent;"
                            >
                                <foreignObject
                                    x="0"
                                    y="0"
                                    width="120"
                                    height="60"
                                >
                                    <div
                                        class="apexcharts-legend"
                                        xmlns="http://www.w3.org/1999/xhtml"
                                        style="max-height: 30px;"
                                    ></div>
                                </foreignObject>
                                <rect
                                    id="SvgjsRect1648"
                                    width="0"
                                    height="0"
                                    x="0"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fefefe"
                                ></rect>
                                <g
                                    id="SvgjsG1679"
                                    class="apexcharts-yaxis"
                                    rel="0"
                                    transform="translate(-18, 0)"
                                ></g>
                                <g
                                    id="SvgjsG1646"
                                    class="apexcharts-inner apexcharts-graphical"
                                    transform="translate(0, 2)"
                                >
                                    <defs id="SvgjsDefs1645">
                                        <clipPath id="gridRectMaskq8q2kx46">
                                            <rect
                                                id="SvgjsRect1650"
                                                width="127"
                                                height="46"
                                                x="-3.5"
                                                y="-1.5"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="forecastMaskq8q2kx46"></clipPath>
                                        <clipPath id="nonForecastMaskq8q2kx46"></clipPath>
                                        <clipPath id="gridRectMarkerMaskq8q2kx46">
                                            <rect
                                                id="SvgjsRect1651"
                                                width="124"
                                                height="47"
                                                x="-2"
                                                y="-2"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="gridRectMaska9u7r5ek">
                                            <rect
                                                id="SvgjsRect1907"
                                                width="127"
                                                height="46"
                                                x="-3.5"
                                                y="-1.5"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="forecastMaska9u7r5ek"></clipPath>
                                        <clipPath id="nonForecastMaska9u7r5ek"></clipPath>
                                        <clipPath id="gridRectMarkerMaska9u7r5ek">
                                            <rect
                                                id="SvgjsRect1908"
                                                width="124"
                                                height="47"
                                                x="-2"
                                                y="-2"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                    </defs>
                                    <line
                                        id="SvgjsLine1649"
                                        x1="0"
                                        y1="0"
                                        x2="0"
                                        y2="43"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="3"
                                        stroke-linecap="butt"
                                        class="apexcharts-xcrosshairs"
                                        x="0"
                                        y="0"
                                        width="1"
                                        height="43"
                                        fill="#b1b9c4"
                                        filter="none"
                                        fill-opacity="0.9"
                                        stroke-width="1"
                                    ></line>
                                    <g
                                        id="SvgjsG1657"
                                        class="apexcharts-grid"
                                    >
                                        <g
                                            id="SvgjsG1658"
                                            class="apexcharts-gridlines-horizontal"
                                        >
                                            <line
                                                id="SvgjsLine1662"
                                                x1="0"
                                                y1="8.6"
                                                x2="120"
                                                y2="8.6"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1663"
                                                x1="0"
                                                y1="17.2"
                                                x2="120"
                                                y2="17.2"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1664"
                                                x1="0"
                                                y1="25.799999999999997"
                                                x2="120"
                                                y2="25.799999999999997"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1665"
                                                x1="0"
                                                y1="34.4"
                                                x2="120"
                                                y2="34.4"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                        </g>
                                        <g
                                            id="SvgjsG1659"
                                            class="apexcharts-gridlines-vertical"
                                        ></g>
                                        <line
                                            id="SvgjsLine1668"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                        <line
                                            id="SvgjsLine1667"
                                            x1="0"
                                            y1="1"
                                            x2="0"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                    </g>
                                    <g
                                        id="SvgjsG1652"
                                        class="apexcharts-line-series apexcharts-plot-series"
                                    >
                                        <g
                                            id="SvgjsG1653"
                                            class="apexcharts-series"
                                            seriesname="Stat"
                                            data:longestseries="true"
                                            rel="1"
                                            data:realindex="0"
                                        >
                                            <path
                                                id="SvgjsPath1656"
                                                d="M 0 14.878C 8.399999999999999 14.878 15.600000000000001 7.739999999999995 24 7.739999999999995C 32.4 7.739999999999995 39.6 38.614 48 38.614C 56.4 38.614 63.6 19.779999999999998 72 19.779999999999998C 80.4 19.779999999999998 87.6 36.378 96 36.378C 104.4 36.378 111.6 16.598 120 16.598"
                                                fill="none"
                                                fill-opacity="1"
                                                stroke="rgba(58,197,188,0.85)"
                                                stroke-opacity="1"
                                                stroke-linecap="butt"
                                                stroke-width="3"
                                                stroke-dasharray="0"
                                                class="apexcharts-line"
                                                index="0"
                                                clip-path="url(#gridRectMaskq8q2kx46)"
                                                pathto="M 0 14.878C 8.399999999999999 14.878 15.600000000000001 7.739999999999995 24 7.739999999999995C 32.4 7.739999999999995 39.6 38.614 48 38.614C 56.4 38.614 63.6 19.779999999999998 72 19.779999999999998C 80.4 19.779999999999998 87.6 36.378 96 36.378C 104.4 36.378 111.6 16.598 120 16.598"
                                                pathfrom="M -1 43 L -1 43 L 24 43 L 48 43 L 72 43 L 96 43 L 120 43"
                                                fill-rule="evenodd"
                                            ></path>
                                            <g
                                                id="SvgjsG1654"
                                                class="apexcharts-series-markers-wrap"
                                                data:realindex="0"
                                            >
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1683"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker wnxmjncmv no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#3ac5bc"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1940"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker wbqki15ps no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#3ac5bc"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                    <g
                                        id="SvgjsG1660"
                                        class="apexcharts-grid-borders"
                                    >
                                        <line
                                            id="SvgjsLine1661"
                                            x1="0"
                                            y1="0"
                                            x2="120"
                                            y2="0"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                        <line
                                            id="SvgjsLine1666"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                    </g>
                                    <line
                                        id="SvgjsLine1669"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="0"
                                        stroke-width="1"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs"
                                    ></line>
                                    <line
                                        id="SvgjsLine1670"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke-dasharray="0"
                                        stroke-width="0"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs-hidden"
                                    ></line>
                                    <g
                                        id="SvgjsG1671"
                                        class="apexcharts-xaxis"
                                        transform="translate(0, 0)"
                                    >
                                        <g
                                            id="SvgjsG1672"
                                            class="apexcharts-xaxis-texts-g"
                                            transform="translate(0, -4)"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1680"
                                        class="apexcharts-yaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1681"
                                        class="apexcharts-xaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1682"
                                        class="apexcharts-point-annotations"
                                    ></g>
                                    <rect
                                        id="SvgjsRect1684"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-zoom-rect"
                                    ></rect>
                                    <rect
                                        id="SvgjsRect1685"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-selection-rect"
                                    ></rect>
                                </g>
                            </svg>
                            <div class="apexcharts-tooltip apexcharts-theme-light">
                                <div
                                    class="apexcharts-tooltip-title"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                                <div
                                    class="apexcharts-tooltip-series-group"
                                    style="order: 1;"
                                ><span
                                        class="apexcharts-tooltip-marker"
                                        style="background-color: rgb(58, 197, 188);"
                                    ></span>
                                    <div
                                        class="apexcharts-tooltip-text"
                                        style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                    >
                                        <div class="apexcharts-tooltip-y-group"><span
                                                class="apexcharts-tooltip-text-y-label"
                                            ></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                        <div class="apexcharts-tooltip-goals-group"><span
                                                class="apexcharts-tooltip-text-goals-label"
                                            ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                        <div class="apexcharts-tooltip-z-group"><span
                                                class="apexcharts-tooltip-text-z-label"
                                            ></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                    </div>
                                </div>
                                <div
                                    class="apexcharts-tooltip-series-group"
                                    style="order: 1;"
                                ><span
                                        class="apexcharts-tooltip-marker"
                                        style="background-color: rgb(58, 197, 188);"
                                    ></span>
                                    <div
                                        class="apexcharts-tooltip-text"
                                        style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                    >
                                        <div class="apexcharts-tooltip-y-group"><span
                                                class="apexcharts-tooltip-text-y-label"
                                            ></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                        <div class="apexcharts-tooltip-goals-group"><span
                                                class="apexcharts-tooltip-text-goals-label"
                                            ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                        <div class="apexcharts-tooltip-z-group"><span
                                                class="apexcharts-tooltip-text-z-label"
                                            ></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                <div
                                    class="apexcharts-xaxistooltip-text"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                            </div>
                            <div
                                class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                <div class="apexcharts-yaxistooltip-text"></div>
                            </div>
                        </div>
                        <div
                            id="apexchartsa9u7r5ek"
                            class="apexcharts-canvas apexchartsa9u7r5ek apexcharts-theme-light"
                            style="width: 120px; height: 60px;"
                        ><svg
                                id="SvgjsSvg1901"
                                width="120"
                                height="60"
                                xmlns="http://www.w3.org/2000/svg"
                                version="1.1"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                xmlns:svgjs="http://svgjs.dev"
                                class="apexcharts-svg apexcharts-zoomable"
                                xmlns:data="ApexChartsNS"
                                transform="translate(0, 0)"
                                style="background: transparent;"
                            >
                                <foreignObject
                                    x="0"
                                    y="0"
                                    width="120"
                                    height="60"
                                >
                                    <div
                                        class="apexcharts-legend"
                                        xmlns="http://www.w3.org/1999/xhtml"
                                        style="max-height: 30px;"
                                    ></div>
                                </foreignObject>
                                <rect
                                    id="SvgjsRect1905"
                                    width="0"
                                    height="0"
                                    x="0"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fefefe"
                                ></rect>
                                <g
                                    id="SvgjsG1936"
                                    class="apexcharts-yaxis"
                                    rel="0"
                                    transform="translate(-18, 0)"
                                ></g>
                                <g
                                    id="SvgjsG1903"
                                    class="apexcharts-inner apexcharts-graphical"
                                    transform="translate(0, 2)"
                                >
                                    <defs id="SvgjsDefs1902"></defs>
                                    <line
                                        id="SvgjsLine1906"
                                        x1="0"
                                        y1="0"
                                        x2="0"
                                        y2="43"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="3"
                                        stroke-linecap="butt"
                                        class="apexcharts-xcrosshairs"
                                        x="0"
                                        y="0"
                                        width="1"
                                        height="43"
                                        fill="#b1b9c4"
                                        filter="none"
                                        fill-opacity="0.9"
                                        stroke-width="1"
                                    ></line>
                                    <g
                                        id="SvgjsG1914"
                                        class="apexcharts-grid"
                                    >
                                        <g
                                            id="SvgjsG1915"
                                            class="apexcharts-gridlines-horizontal"
                                        >
                                            <line
                                                id="SvgjsLine1919"
                                                x1="0"
                                                y1="8.6"
                                                x2="120"
                                                y2="8.6"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1920"
                                                x1="0"
                                                y1="17.2"
                                                x2="120"
                                                y2="17.2"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1921"
                                                x1="0"
                                                y1="25.799999999999997"
                                                x2="120"
                                                y2="25.799999999999997"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1922"
                                                x1="0"
                                                y1="34.4"
                                                x2="120"
                                                y2="34.4"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                        </g>
                                        <g
                                            id="SvgjsG1916"
                                            class="apexcharts-gridlines-vertical"
                                        ></g>
                                        <line
                                            id="SvgjsLine1925"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                        <line
                                            id="SvgjsLine1924"
                                            x1="0"
                                            y1="1"
                                            x2="0"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                    </g>
                                    <g
                                        id="SvgjsG1909"
                                        class="apexcharts-line-series apexcharts-plot-series"
                                    >
                                        <g
                                            id="SvgjsG1910"
                                            class="apexcharts-series"
                                            seriesName="Stat"
                                            data:longestSeries="true"
                                            rel="1"
                                            data:realIndex="0"
                                        >
                                            <path
                                                id="SvgjsPath1913"
                                                d="M0 14.878C8.399999999999999 14.878 15.600000000000001 7.739999999999995 24 7.739999999999995C32.4 7.739999999999995 39.6 38.614 48 38.614C56.4 38.614 63.6 19.779999999999998 72 19.779999999999998C80.4 19.779999999999998 87.6 36.378 96 36.378C104.4 36.378 111.6 16.598 120 16.598C120 16.598 120 16.598 120 16.598 "
                                                fill="none"
                                                fill-opacity="1"
                                                stroke="rgba(58,197,188,0.85)"
                                                stroke-opacity="1"
                                                stroke-linecap="butt"
                                                stroke-width="3"
                                                stroke-dasharray="0"
                                                class="apexcharts-line"
                                                index="0"
                                                clip-path="url(#gridRectMaska9u7r5ek)"
                                                pathTo="M 0 14.878C 8.399999999999999 14.878 15.600000000000001 7.739999999999995 24 7.739999999999995C 32.4 7.739999999999995 39.6 38.614 48 38.614C 56.4 38.614 63.6 19.779999999999998 72 19.779999999999998C 80.4 19.779999999999998 87.6 36.378 96 36.378C 104.4 36.378 111.6 16.598 120 16.598"
                                                pathFrom="M -1 43 L -1 43 L 24 43 L 48 43 L 72 43 L 96 43 L 120 43"
                                                fill-rule="evenodd"
                                            ></path>
                                            <g
                                                id="SvgjsG1911"
                                                class="apexcharts-series-markers-wrap"
                                                data:realIndex="0"
                                            >
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1941"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker wieebk6t4 no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#3ac5bc"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                            </g>
                                        </g>
                                        <g
                                            id="SvgjsG1655"
                                            class="apexcharts-datalabels"
                                            data:realindex="0"
                                        ></g>
                                        <g
                                            id="SvgjsG1912"
                                            class="apexcharts-datalabels"
                                            data:realIndex="0"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1917"
                                        class="apexcharts-grid-borders"
                                    >
                                        <line
                                            id="SvgjsLine1918"
                                            x1="0"
                                            y1="0"
                                            x2="120"
                                            y2="0"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                        <line
                                            id="SvgjsLine1923"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                    </g>
                                    <line
                                        id="SvgjsLine1926"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="0"
                                        stroke-width="1"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs"
                                    ></line>
                                    <line
                                        id="SvgjsLine1927"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke-dasharray="0"
                                        stroke-width="0"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs-hidden"
                                    ></line>
                                    <g
                                        id="SvgjsG1928"
                                        class="apexcharts-xaxis"
                                        transform="translate(0, 0)"
                                    >
                                        <g
                                            id="SvgjsG1929"
                                            class="apexcharts-xaxis-texts-g"
                                            transform="translate(0, -4)"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1937"
                                        class="apexcharts-yaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1938"
                                        class="apexcharts-xaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1939"
                                        class="apexcharts-point-annotations"
                                    ></g>
                                    <rect
                                        id="SvgjsRect1942"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-zoom-rect"
                                    ></rect>
                                    <rect
                                        id="SvgjsRect1943"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-selection-rect"
                                    ></rect>
                                </g>
                            </svg>
                            <div class="apexcharts-tooltip apexcharts-theme-light">
                                <div
                                    class="apexcharts-tooltip-title"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                            </div>
                            <div
                                class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                <div class="apexcharts-yaxistooltip-text"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flex w-36 flex-col items-center rounded-lg bg-slate-100 py-2 font-inter dark:bg-navy-500">
                    <p class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                        $1,956.11
                    </p>
                    <p class="mt-1 flex items-center space-x-0.5 text-xs text-success">
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4 w-4"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="currentColor"
                        >
                            <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M7 11l5-5m0 0l5 5m-5-5v12"
                            ></path>
                        </svg>
                        <span>3.6%</span>
                    </p>
                </div>
            </div>
        </div>
        <div class="flex w-72 shrink-0 flex-col">
            <div class="flex items-center space-x-2">
                <img
                    class="h-6 w-6"
                    src="images/logos/litecoin.svg"
                    alt="flag"
                >
                <div>
                    <span>Litecoin</span>
                    <span class="text-xs uppercase text-slate-400 dark:text-navy-300">
                        LTC
                    </span>
                </div>
            </div>

            <div class="mt-2.5 flex justify-between rounded-lg bg-slate-50 py-3 pr-3 dark:bg-navy-600">
                <div class="ax-transparent-gridline">
                    <div
                        x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoWatchlist4); $el._x_chart.render() });"
                        style="min-height: 60px;"
                    >
                        <div
                            id="apexchartsfhtozbu4"
                            class="apexcharts-canvas apexchartsfhtozbu4 apexcharts-theme-light"
                            style="width: 120px; height: 60px;"
                        ><svg
                                id="SvgjsSvg1687"
                                width="120"
                                height="60"
                                xmlns="http://www.w3.org/2000/svg"
                                version="1.1"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                xmlns:svgjs="http://svgjs.dev"
                                class="apexcharts-svg apexcharts-zoomable"
                                xmlns:data="ApexChartsNS"
                                transform="translate(0, 0)"
                                style="background: transparent;"
                            >
                                <foreignObject
                                    x="0"
                                    y="0"
                                    width="120"
                                    height="60"
                                >
                                    <div
                                        class="apexcharts-legend"
                                        xmlns="http://www.w3.org/1999/xhtml"
                                        style="max-height: 30px;"
                                    ></div>
                                </foreignObject>
                                <rect
                                    id="SvgjsRect1691"
                                    width="0"
                                    height="0"
                                    x="0"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fefefe"
                                ></rect>
                                <g
                                    id="SvgjsG1722"
                                    class="apexcharts-yaxis"
                                    rel="0"
                                    transform="translate(-18, 0)"
                                ></g>
                                <g
                                    id="SvgjsG1689"
                                    class="apexcharts-inner apexcharts-graphical"
                                    transform="translate(0, 2)"
                                >
                                    <defs id="SvgjsDefs1688">
                                        <clipPath id="gridRectMaskfhtozbu4">
                                            <rect
                                                id="SvgjsRect1693"
                                                width="127"
                                                height="46"
                                                x="-3.5"
                                                y="-1.5"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="forecastMaskfhtozbu4"></clipPath>
                                        <clipPath id="nonForecastMaskfhtozbu4"></clipPath>
                                        <clipPath id="gridRectMarkerMaskfhtozbu4">
                                            <rect
                                                id="SvgjsRect1694"
                                                width="124"
                                                height="47"
                                                x="-2"
                                                y="-2"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="gridRectMaskck7hi14hf">
                                            <rect
                                                id="SvgjsRect1950"
                                                width="127"
                                                height="46"
                                                x="-3.5"
                                                y="-1.5"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                        <clipPath id="forecastMaskck7hi14hf"></clipPath>
                                        <clipPath id="nonForecastMaskck7hi14hf"></clipPath>
                                        <clipPath id="gridRectMarkerMaskck7hi14hf">
                                            <rect
                                                id="SvgjsRect1951"
                                                width="124"
                                                height="47"
                                                x="-2"
                                                y="-2"
                                                rx="0"
                                                ry="0"
                                                opacity="1"
                                                stroke-width="0"
                                                stroke="none"
                                                stroke-dasharray="0"
                                                fill="#fff"
                                            ></rect>
                                        </clipPath>
                                    </defs>
                                    <line
                                        id="SvgjsLine1692"
                                        x1="0"
                                        y1="0"
                                        x2="0"
                                        y2="43"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="3"
                                        stroke-linecap="butt"
                                        class="apexcharts-xcrosshairs"
                                        x="0"
                                        y="0"
                                        width="1"
                                        height="43"
                                        fill="#b1b9c4"
                                        filter="none"
                                        fill-opacity="0.9"
                                        stroke-width="1"
                                    ></line>
                                    <g
                                        id="SvgjsG1700"
                                        class="apexcharts-grid"
                                    >
                                        <g
                                            id="SvgjsG1701"
                                            class="apexcharts-gridlines-horizontal"
                                        >
                                            <line
                                                id="SvgjsLine1705"
                                                x1="0"
                                                y1="8.6"
                                                x2="120"
                                                y2="8.6"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1706"
                                                x1="0"
                                                y1="17.2"
                                                x2="120"
                                                y2="17.2"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1707"
                                                x1="0"
                                                y1="25.799999999999997"
                                                x2="120"
                                                y2="25.799999999999997"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1708"
                                                x1="0"
                                                y1="34.4"
                                                x2="120"
                                                y2="34.4"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                        </g>
                                        <g
                                            id="SvgjsG1702"
                                            class="apexcharts-gridlines-vertical"
                                        ></g>
                                        <line
                                            id="SvgjsLine1711"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                        <line
                                            id="SvgjsLine1710"
                                            x1="0"
                                            y1="1"
                                            x2="0"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                    </g>
                                    <g
                                        id="SvgjsG1695"
                                        class="apexcharts-line-series apexcharts-plot-series"
                                    >
                                        <g
                                            id="SvgjsG1696"
                                            class="apexcharts-series"
                                            seriesname="Stat"
                                            data:longestseries="true"
                                            rel="1"
                                            data:realindex="0"
                                        >
                                            <path
                                                id="SvgjsPath1699"
                                                d="M 0 43C 8.399999999999999 43 15.600000000000001 25.8 24 25.8C 32.4 25.8 39.6 34.4 48 34.4C 56.4 34.4 63.6 17.200000000000003 72 17.200000000000003C 80.4 17.200000000000003 87.6 25.8 96 25.8C 104.4 25.8 111.6 0 120 0"
                                                fill="none"
                                                fill-opacity="1"
                                                stroke="rgba(64,115,195,0.85)"
                                                stroke-opacity="1"
                                                stroke-linecap="butt"
                                                stroke-width="3"
                                                stroke-dasharray="0"
                                                class="apexcharts-line"
                                                index="0"
                                                clip-path="url(#gridRectMaskfhtozbu4)"
                                                pathto="M 0 43C 8.399999999999999 43 15.600000000000001 25.8 24 25.8C 32.4 25.8 39.6 34.4 48 34.4C 56.4 34.4 63.6 17.200000000000003 72 17.200000000000003C 80.4 17.200000000000003 87.6 25.8 96 25.8C 104.4 25.8 111.6 0 120 0"
                                                pathfrom="M -1 43 L -1 43 L 24 43 L 48 43 L 72 43 L 96 43 L 120 43"
                                                fill-rule="evenodd"
                                            ></path>
                                            <g
                                                id="SvgjsG1697"
                                                class="apexcharts-series-markers-wrap"
                                                data:realindex="0"
                                            >
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1726"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker w6qfqo3nsg no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#4073c3"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1983"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker wlceb1mejj no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#4073c3"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                    <g
                                        id="SvgjsG1703"
                                        class="apexcharts-grid-borders"
                                    >
                                        <line
                                            id="SvgjsLine1704"
                                            x1="0"
                                            y1="0"
                                            x2="120"
                                            y2="0"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                        <line
                                            id="SvgjsLine1709"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                    </g>
                                    <line
                                        id="SvgjsLine1712"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="0"
                                        stroke-width="1"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs"
                                    ></line>
                                    <line
                                        id="SvgjsLine1713"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke-dasharray="0"
                                        stroke-width="0"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs-hidden"
                                    ></line>
                                    <g
                                        id="SvgjsG1714"
                                        class="apexcharts-xaxis"
                                        transform="translate(0, 0)"
                                    >
                                        <g
                                            id="SvgjsG1715"
                                            class="apexcharts-xaxis-texts-g"
                                            transform="translate(0, -4)"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1723"
                                        class="apexcharts-yaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1724"
                                        class="apexcharts-xaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1725"
                                        class="apexcharts-point-annotations"
                                    ></g>
                                    <rect
                                        id="SvgjsRect1727"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-zoom-rect"
                                    ></rect>
                                    <rect
                                        id="SvgjsRect1728"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-selection-rect"
                                    ></rect>
                                </g>
                            </svg>
                            <div class="apexcharts-tooltip apexcharts-theme-light">
                                <div
                                    class="apexcharts-tooltip-title"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                                <div
                                    class="apexcharts-tooltip-series-group"
                                    style="order: 1;"
                                ><span
                                        class="apexcharts-tooltip-marker"
                                        style="background-color: rgb(64, 115, 195);"
                                    ></span>
                                    <div
                                        class="apexcharts-tooltip-text"
                                        style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                    >
                                        <div class="apexcharts-tooltip-y-group"><span
                                                class="apexcharts-tooltip-text-y-label"
                                            ></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                        <div class="apexcharts-tooltip-goals-group"><span
                                                class="apexcharts-tooltip-text-goals-label"
                                            ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                        <div class="apexcharts-tooltip-z-group"><span
                                                class="apexcharts-tooltip-text-z-label"
                                            ></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                    </div>
                                </div>
                                <div
                                    class="apexcharts-tooltip-series-group"
                                    style="order: 1;"
                                ><span
                                        class="apexcharts-tooltip-marker"
                                        style="background-color: rgb(64, 115, 195);"
                                    ></span>
                                    <div
                                        class="apexcharts-tooltip-text"
                                        style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                    >
                                        <div class="apexcharts-tooltip-y-group"><span
                                                class="apexcharts-tooltip-text-y-label"
                                            ></span><span class="apexcharts-tooltip-text-y-value"></span></div>
                                        <div class="apexcharts-tooltip-goals-group"><span
                                                class="apexcharts-tooltip-text-goals-label"
                                            ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                                        <div class="apexcharts-tooltip-z-group"><span
                                                class="apexcharts-tooltip-text-z-label"
                                            ></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light">
                                <div
                                    class="apexcharts-xaxistooltip-text"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                            </div>
                            <div
                                class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                <div class="apexcharts-yaxistooltip-text"></div>
                            </div>
                        </div>
                        <div
                            id="apexchartsck7hi14hf"
                            class="apexcharts-canvas apexchartsck7hi14hf apexcharts-theme-light"
                            style="width: 120px; height: 60px;"
                        ><svg
                                id="SvgjsSvg1944"
                                width="120"
                                height="60"
                                xmlns="http://www.w3.org/2000/svg"
                                version="1.1"
                                xmlns:xlink="http://www.w3.org/1999/xlink"
                                xmlns:svgjs="http://svgjs.dev"
                                class="apexcharts-svg apexcharts-zoomable"
                                xmlns:data="ApexChartsNS"
                                transform="translate(0, 0)"
                                style="background: transparent;"
                            >
                                <foreignObject
                                    x="0"
                                    y="0"
                                    width="120"
                                    height="60"
                                >
                                    <div
                                        class="apexcharts-legend"
                                        xmlns="http://www.w3.org/1999/xhtml"
                                        style="max-height: 30px;"
                                    ></div>
                                </foreignObject>
                                <rect
                                    id="SvgjsRect1948"
                                    width="0"
                                    height="0"
                                    x="0"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fefefe"
                                ></rect>
                                <g
                                    id="SvgjsG1979"
                                    class="apexcharts-yaxis"
                                    rel="0"
                                    transform="translate(-18, 0)"
                                ></g>
                                <g
                                    id="SvgjsG1946"
                                    class="apexcharts-inner apexcharts-graphical"
                                    transform="translate(0, 2)"
                                >
                                    <defs id="SvgjsDefs1945"></defs>
                                    <line
                                        id="SvgjsLine1949"
                                        x1="0"
                                        y1="0"
                                        x2="0"
                                        y2="43"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="3"
                                        stroke-linecap="butt"
                                        class="apexcharts-xcrosshairs"
                                        x="0"
                                        y="0"
                                        width="1"
                                        height="43"
                                        fill="#b1b9c4"
                                        filter="none"
                                        fill-opacity="0.9"
                                        stroke-width="1"
                                    ></line>
                                    <g
                                        id="SvgjsG1957"
                                        class="apexcharts-grid"
                                    >
                                        <g
                                            id="SvgjsG1958"
                                            class="apexcharts-gridlines-horizontal"
                                        >
                                            <line
                                                id="SvgjsLine1962"
                                                x1="0"
                                                y1="8.6"
                                                x2="120"
                                                y2="8.6"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1963"
                                                x1="0"
                                                y1="17.2"
                                                x2="120"
                                                y2="17.2"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1964"
                                                x1="0"
                                                y1="25.799999999999997"
                                                x2="120"
                                                y2="25.799999999999997"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                            <line
                                                id="SvgjsLine1965"
                                                x1="0"
                                                y1="34.4"
                                                x2="120"
                                                y2="34.4"
                                                stroke="#e0e0e0"
                                                stroke-dasharray="0"
                                                stroke-linecap="butt"
                                                class="apexcharts-gridline"
                                            ></line>
                                        </g>
                                        <g
                                            id="SvgjsG1959"
                                            class="apexcharts-gridlines-vertical"
                                        ></g>
                                        <line
                                            id="SvgjsLine1968"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                        <line
                                            id="SvgjsLine1967"
                                            x1="0"
                                            y1="1"
                                            x2="0"
                                            y2="43"
                                            stroke="transparent"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                        ></line>
                                    </g>
                                    <g
                                        id="SvgjsG1952"
                                        class="apexcharts-line-series apexcharts-plot-series"
                                    >
                                        <g
                                            id="SvgjsG1953"
                                            class="apexcharts-series"
                                            seriesName="Stat"
                                            data:longestSeries="true"
                                            rel="1"
                                            data:realIndex="0"
                                        >
                                            <path
                                                id="SvgjsPath1956"
                                                d="M0 43C8.399999999999999 43 15.600000000000001 25.8 24 25.8C32.4 25.8 39.6 34.4 48 34.4C56.4 34.4 63.6 17.200000000000003 72 17.200000000000003C80.4 17.200000000000003 87.6 25.8 96 25.8C104.4 25.8 111.6 0 120 0C120 0 120 0 120 0 "
                                                fill="none"
                                                fill-opacity="1"
                                                stroke="rgba(64,115,195,0.85)"
                                                stroke-opacity="1"
                                                stroke-linecap="butt"
                                                stroke-width="3"
                                                stroke-dasharray="0"
                                                class="apexcharts-line"
                                                index="0"
                                                clip-path="url(#gridRectMaskck7hi14hf)"
                                                pathTo="M 0 43C 8.399999999999999 43 15.600000000000001 25.8 24 25.8C 32.4 25.8 39.6 34.4 48 34.4C 56.4 34.4 63.6 17.200000000000003 72 17.200000000000003C 80.4 17.200000000000003 87.6 25.8 96 25.8C 104.4 25.8 111.6 0 120 0"
                                                pathFrom="M -1 43 L -1 43 L 24 43 L 48 43 L 72 43 L 96 43 L 120 43"
                                                fill-rule="evenodd"
                                            ></path>
                                            <g
                                                id="SvgjsG1954"
                                                class="apexcharts-series-markers-wrap"
                                                data:realIndex="0"
                                            >
                                                <g class="apexcharts-series-markers">
                                                    <circle
                                                        id="SvgjsCircle1984"
                                                        r="0"
                                                        cx="0"
                                                        cy="0"
                                                        class="apexcharts-marker wca2abukf no-pointer-events"
                                                        stroke="#ffffff"
                                                        fill="#4073c3"
                                                        fill-opacity="1"
                                                        stroke-width="2"
                                                        stroke-opacity="0.9"
                                                        default-marker-size="0"
                                                    ></circle>
                                                </g>
                                            </g>
                                        </g>
                                        <g
                                            id="SvgjsG1698"
                                            class="apexcharts-datalabels"
                                            data:realindex="0"
                                        ></g>
                                        <g
                                            id="SvgjsG1955"
                                            class="apexcharts-datalabels"
                                            data:realIndex="0"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1960"
                                        class="apexcharts-grid-borders"
                                    >
                                        <line
                                            id="SvgjsLine1961"
                                            x1="0"
                                            y1="0"
                                            x2="120"
                                            y2="0"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                        <line
                                            id="SvgjsLine1966"
                                            x1="0"
                                            y1="43"
                                            x2="120"
                                            y2="43"
                                            stroke="#e0e0e0"
                                            stroke-dasharray="0"
                                            stroke-linecap="butt"
                                            class="apexcharts-gridline"
                                        ></line>
                                    </g>
                                    <line
                                        id="SvgjsLine1969"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke="#b6b6b6"
                                        stroke-dasharray="0"
                                        stroke-width="1"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs"
                                    ></line>
                                    <line
                                        id="SvgjsLine1970"
                                        x1="0"
                                        y1="0"
                                        x2="120"
                                        y2="0"
                                        stroke-dasharray="0"
                                        stroke-width="0"
                                        stroke-linecap="butt"
                                        class="apexcharts-ycrosshairs-hidden"
                                    ></line>
                                    <g
                                        id="SvgjsG1971"
                                        class="apexcharts-xaxis"
                                        transform="translate(0, 0)"
                                    >
                                        <g
                                            id="SvgjsG1972"
                                            class="apexcharts-xaxis-texts-g"
                                            transform="translate(0, -4)"
                                        ></g>
                                    </g>
                                    <g
                                        id="SvgjsG1980"
                                        class="apexcharts-yaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1981"
                                        class="apexcharts-xaxis-annotations"
                                    ></g>
                                    <g
                                        id="SvgjsG1982"
                                        class="apexcharts-point-annotations"
                                    ></g>
                                    <rect
                                        id="SvgjsRect1985"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-zoom-rect"
                                    ></rect>
                                    <rect
                                        id="SvgjsRect1986"
                                        width="0"
                                        height="0"
                                        x="0"
                                        y="0"
                                        rx="0"
                                        ry="0"
                                        opacity="1"
                                        stroke-width="0"
                                        stroke="none"
                                        stroke-dasharray="0"
                                        fill="#fefefe"
                                        class="apexcharts-selection-rect"
                                    ></rect>
                                </g>
                            </svg>
                            <div class="apexcharts-tooltip apexcharts-theme-light">
                                <div
                                    class="apexcharts-tooltip-title"
                                    style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                                ></div>
                            </div>
                            <div
                                class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                <div class="apexcharts-yaxistooltip-text"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flex w-36 flex-col items-center rounded-lg bg-slate-100 py-2 font-inter dark:bg-navy-500">
                    <p class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                        $487.76
                    </p>
                    <p class="mt-1 flex items-center space-x-0.5 text-xs text-success">
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-4 w-4"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="currentColor"
                        >
                            <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M7 11l5-5m0 0l5 5m-5-5v12"
                            ></path>
                        </svg>
                        <span>7.98%</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
{/literal}

