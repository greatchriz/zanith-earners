{literal}
<div class="card mt-4 pb-1 sm:mt-5 lg:mt-6">
    <div class="mt-3 flex items-center justify-between px-4 sm:px-5">
        <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
            Transactions
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
                style="position: fixed; inset: 0px 0px auto auto; margin: 0px; transform: translate(-78px, -132px);"
                data-popper-placement="bottom-end"
                data-popper-reference-hidden=""
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

    <div class="ax-transparent-gridline pr-2">
        <div
            x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoTransactions); $el._x_chart.render() });"
            style="min-height: 243px;"
        >
            <div
                id="apexchartslnthm44x"
                class="apexcharts-canvas apexchartslnthm44x apexcharts-theme-light"
                style="width: 1767px; height: 228px;"
            ><svg
                    id="SvgjsSvg2499"
                    width="1767"
                    height="228"
                    xmlns="http://www.w3.org/2000/svg"
                    version="1.1"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    xmlns:svgjs="http://svgjs.dev"
                    class="apexcharts-svg"
                    xmlns:data="ApexChartsNS"
                    transform="translate(0, 0)"
                    style="background: transparent;"
                >
                    <foreignObject
                        x="0"
                        y="0"
                        width="1767"
                        height="228"
                    >
                        <div
                            class="apexcharts-legend"
                            xmlns="http://www.w3.org/1999/xhtml"
                            style="max-height: 114px;"
                        ></div>
                    </foreignObject>
                    <g
                        id="SvgjsG2582"
                        class="apexcharts-yaxis"
                        rel="0"
                        transform="translate(-8, 0)"
                    >
                        <g
                            id="SvgjsG2583"
                            class="apexcharts-yaxis-texts-g"
                        ></g>
                    </g>
                    <g
                        id="SvgjsG2501"
                        class="apexcharts-inner apexcharts-graphical"
                        transform="translate(10, 30)"
                    >
                        <defs id="SvgjsDefs2500">
                            <linearGradient
                                id="SvgjsLinearGradient2503"
                                x1="0"
                                y1="0"
                                x2="0"
                                y2="1"
                            >
                                <stop
                                    id="SvgjsStop2504"
                                    stop-opacity="0.4"
                                    stop-color="rgba(216,227,240,0.4)"
                                    offset="0"
                                ></stop>
                                <stop
                                    id="SvgjsStop2505"
                                    stop-opacity="0.5"
                                    stop-color="rgba(190,209,230,0.5)"
                                    offset="1"
                                ></stop>
                                <stop
                                    id="SvgjsStop2506"
                                    stop-opacity="0.5"
                                    stop-color="rgba(190,209,230,0.5)"
                                    offset="1"
                                ></stop>
                            </linearGradient>
                            <clipPath id="gridRectMasklnthm44x">
                                <rect
                                    id="SvgjsRect2508"
                                    width="1761"
                                    height="168.73"
                                    x="-2"
                                    y="0"
                                    rx="0"
                                    ry="0"
                                    opacity="1"
                                    stroke-width="0"
                                    stroke="none"
                                    stroke-dasharray="0"
                                    fill="#fff"
                                ></rect>
                            </clipPath>
                            <clipPath id="forecastMasklnthm44x"></clipPath>
                            <clipPath id="nonForecastMasklnthm44x"></clipPath>
                            <clipPath id="gridRectMarkerMasklnthm44x">
                                <rect
                                    id="SvgjsRect2509"
                                    width="1761"
                                    height="172.73"
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
                        <rect
                            id="SvgjsRect2507"
                            width="50.2"
                            height="168.73"
                            x="0"
                            y="0"
                            rx="0"
                            ry="0"
                            opacity="1"
                            stroke-width="0"
                            stroke-dasharray="3"
                            fill="url(#SvgjsLinearGradient2503)"
                            class="apexcharts-xcrosshairs"
                            y2="168.73"
                            filter="none"
                            fill-opacity="0.9"
                        ></rect>
                        <g
                            id="SvgjsG2545"
                            class="apexcharts-grid"
                        >
                            <g
                                id="SvgjsG2546"
                                class="apexcharts-gridlines-horizontal"
                            >
                                <line
                                    id="SvgjsLine2550"
                                    x1="0"
                                    y1="33.745999999999995"
                                    x2="1757"
                                    y2="33.745999999999995"
                                    stroke="#e0e0e0"
                                    stroke-dasharray="0"
                                    stroke-linecap="butt"
                                    class="apexcharts-gridline"
                                ></line>
                                <line
                                    id="SvgjsLine2551"
                                    x1="0"
                                    y1="67.49199999999999"
                                    x2="1757"
                                    y2="67.49199999999999"
                                    stroke="#e0e0e0"
                                    stroke-dasharray="0"
                                    stroke-linecap="butt"
                                    class="apexcharts-gridline"
                                ></line>
                                <line
                                    id="SvgjsLine2552"
                                    x1="0"
                                    y1="101.23799999999999"
                                    x2="1757"
                                    y2="101.23799999999999"
                                    stroke="#e0e0e0"
                                    stroke-dasharray="0"
                                    stroke-linecap="butt"
                                    class="apexcharts-gridline"
                                ></line>
                                <line
                                    id="SvgjsLine2553"
                                    x1="0"
                                    y1="134.98399999999998"
                                    x2="1757"
                                    y2="134.98399999999998"
                                    stroke="#e0e0e0"
                                    stroke-dasharray="0"
                                    stroke-linecap="butt"
                                    class="apexcharts-gridline"
                                ></line>
                                <line
                                    id="SvgjsLine2554"
                                    x1="0"
                                    y1="168.72999999999996"
                                    x2="1757"
                                    y2="168.72999999999996"
                                    stroke="#e0e0e0"
                                    stroke-dasharray="0"
                                    stroke-linecap="butt"
                                    class="apexcharts-gridline"
                                ></line>
                            </g>
                            <g
                                id="SvgjsG2547"
                                class="apexcharts-gridlines-vertical"
                            ></g>
                            <line
                                id="SvgjsLine2556"
                                x1="0"
                                y1="168.73"
                                x2="1757"
                                y2="168.73"
                                stroke="transparent"
                                stroke-dasharray="0"
                                stroke-linecap="butt"
                            ></line>
                            <line
                                id="SvgjsLine2555"
                                x1="0"
                                y1="1"
                                x2="0"
                                y2="168.73"
                                stroke="transparent"
                                stroke-dasharray="0"
                                stroke-linecap="butt"
                            ></line>
                        </g>
                        <g
                            id="SvgjsG2510"
                            class="apexcharts-bar-series apexcharts-plot-series"
                        >
                            <g
                                id="SvgjsG2511"
                                class="apexcharts-series"
                                rel="1"
                                seriesName="Income"
                                data:realIndex="0"
                            >
                                <path
                                    id="SvgjsPath2515"
                                    d="M 75.3 163.731 L 75.3 79.24220000000001 C 75.3 76.74220000000001 77.8 74.24220000000001 80.3 74.24220000000001 L 120.5 74.24220000000001 C 123 74.24220000000001 125.5 76.74220000000001 125.5 79.24220000000001 L 125.5 163.731 C 125.5 166.231 123 168.731 120.5 168.731 L 80.3 168.731 C 77.8 168.731 75.3 166.231 75.3 163.731 Z "
                                    fill="rgba(14,165,233,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="0"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 75.3 163.731 L 75.3 79.24220000000001 C 75.3 76.74220000000001 77.8 74.24220000000001 80.3 74.24220000000001 L 120.5 74.24220000000001 C 123 74.24220000000001 125.5 76.74220000000001 125.5 79.24220000000001 L 125.5 163.731 C 125.5 166.231 123 168.731 120.5 168.731 L 80.3 168.731 C 77.8 168.731 75.3 166.231 75.3 163.731 Z "
                                    pathFrom="M 75.3 168.731 L 75.3 168.731 L 125.5 168.731 L 125.5 168.731 L 125.5 168.731 L 125.5 168.731 L 125.5 168.731 L 75.3 168.731 Z"
                                    cy="74.2412"
                                    cx="326.3"
                                    j="0"
                                    val="28"
                                    barHeight="94.48879999999998"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2517"
                                    d="M 326.3 163.731 L 326.3 21.87400000000002 C 326.3 19.37400000000002 328.8 16.87400000000002 331.3 16.87400000000002 L 371.5 16.87400000000002 C 374 16.87400000000002 376.5 19.37400000000002 376.5 21.87400000000002 L 376.5 163.731 C 376.5 166.231 374 168.731 371.5 168.731 L 331.3 168.731 C 328.8 168.731 326.3 166.231 326.3 163.731 Z "
                                    fill="rgba(14,165,233,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="0"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 326.3 163.731 L 326.3 21.87400000000002 C 326.3 19.37400000000002 328.8 16.87400000000002 331.3 16.87400000000002 L 371.5 16.87400000000002 C 374 16.87400000000002 376.5 19.37400000000002 376.5 21.87400000000002 L 376.5 163.731 C 376.5 166.231 374 168.731 371.5 168.731 L 331.3 168.731 C 328.8 168.731 326.3 166.231 326.3 163.731 Z "
                                    pathFrom="M 326.3 168.731 L 326.3 168.731 L 376.5 168.731 L 376.5 168.731 L 376.5 168.731 L 376.5 168.731 L 376.5 168.731 L 326.3 168.731 Z"
                                    cy="16.87300000000002"
                                    cx="577.3"
                                    j="1"
                                    val="45"
                                    barHeight="151.85699999999997"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2519"
                                    d="M 577.3 163.731 L 577.3 55.62000000000001 C 577.3 53.12000000000001 579.8 50.62000000000001 582.3 50.62000000000001 L 622.5 50.62000000000001 C 625 50.62000000000001 627.5 53.12000000000001 627.5 55.62000000000001 L 627.5 163.731 C 627.5 166.231 625 168.731 622.5 168.731 L 582.3 168.731 C 579.8 168.731 577.3 166.231 577.3 163.731 Z "
                                    fill="rgba(14,165,233,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="0"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 577.3 163.731 L 577.3 55.62000000000001 C 577.3 53.12000000000001 579.8 50.62000000000001 582.3 50.62000000000001 L 622.5 50.62000000000001 C 625 50.62000000000001 627.5 53.12000000000001 627.5 55.62000000000001 L 627.5 163.731 C 627.5 166.231 625 168.731 622.5 168.731 L 582.3 168.731 C 579.8 168.731 577.3 166.231 577.3 163.731 Z "
                                    pathFrom="M 577.3 168.731 L 577.3 168.731 L 627.5 168.731 L 627.5 168.731 L 627.5 168.731 L 627.5 168.731 L 627.5 168.731 L 577.3 168.731 Z"
                                    cy="50.619000000000014"
                                    cx="828.3"
                                    j="2"
                                    val="35"
                                    barHeight="118.11099999999998"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2521"
                                    d="M 828.3 163.731 L 828.3 5.001000000000029 C 828.3 2.5010000000000288 830.8 0.0010000000000284217 833.3 0.0010000000000284217 L 873.5 0.0010000000000284217 C 876 0.0010000000000284217 878.5 2.5010000000000283 878.5 5.001000000000029 L 878.5 163.731 C 878.5 166.231 876 168.731 873.5 168.731 L 833.3 168.731 C 830.8 168.731 828.3 166.231 828.3 163.731 Z "
                                    fill="rgba(14,165,233,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="0"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 828.3 163.731 L 828.3 5.001000000000029 C 828.3 2.5010000000000288 830.8 0.0010000000000284217 833.3 0.0010000000000284217 L 873.5 0.0010000000000284217 C 876 0.0010000000000284217 878.5 2.5010000000000283 878.5 5.001000000000029 L 878.5 163.731 C 878.5 166.231 876 168.731 873.5 168.731 L 833.3 168.731 C 830.8 168.731 828.3 166.231 828.3 163.731 Z "
                                    pathFrom="M 828.3 168.731 L 828.3 168.731 L 878.5 168.731 L 878.5 168.731 L 878.5 168.731 L 878.5 168.731 L 878.5 168.731 L 828.3 168.731 Z"
                                    cy="2.842170943040401e-14"
                                    cx="1079.3"
                                    j="3"
                                    val="50"
                                    barHeight="168.72999999999996"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2523"
                                    d="M 1079.3 163.731 L 1079.3 65.7438 C 1079.3 63.24379999999999 1081.8 60.7438 1084.3 60.7438 L 1124.5 60.7438 C 1127 60.7438 1129.5 63.24379999999999 1129.5 65.7438 L 1129.5 163.731 C 1129.5 166.231 1127 168.731 1124.5 168.731 L 1084.3 168.731 C 1081.8 168.731 1079.3 166.231 1079.3 163.731 Z "
                                    fill="rgba(14,165,233,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="0"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 1079.3 163.731 L 1079.3 65.7438 C 1079.3 63.24379999999999 1081.8 60.7438 1084.3 60.7438 L 1124.5 60.7438 C 1127 60.7438 1129.5 63.24379999999999 1129.5 65.7438 L 1129.5 163.731 C 1129.5 166.231 1127 168.731 1124.5 168.731 L 1084.3 168.731 C 1081.8 168.731 1079.3 166.231 1079.3 163.731 Z "
                                    pathFrom="M 1079.3 168.731 L 1079.3 168.731 L 1129.5 168.731 L 1129.5 168.731 L 1129.5 168.731 L 1129.5 168.731 L 1129.5 168.731 L 1079.3 168.731 Z"
                                    cy="60.7428"
                                    cx="1330.3"
                                    j="4"
                                    val="32"
                                    barHeight="107.98719999999999"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2525"
                                    d="M 1330.3 163.731 L 1330.3 11.750200000000003 C 1330.3 9.250200000000003 1332.8 6.750200000000002 1335.3 6.750200000000002 L 1375.5 6.750200000000002 C 1378 6.750200000000002 1380.5 9.250200000000003 1380.5 11.750200000000003 L 1380.5 163.731 C 1380.5 166.231 1378 168.731 1375.5 168.731 L 1335.3 168.731 C 1332.8 168.731 1330.3 166.231 1330.3 163.731 Z "
                                    fill="rgba(14,165,233,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="0"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 1330.3 163.731 L 1330.3 11.750200000000003 C 1330.3 9.250200000000003 1332.8 6.750200000000002 1335.3 6.750200000000002 L 1375.5 6.750200000000002 C 1378 6.750200000000002 1380.5 9.250200000000003 1380.5 11.750200000000003 L 1380.5 163.731 C 1380.5 166.231 1378 168.731 1375.5 168.731 L 1335.3 168.731 C 1332.8 168.731 1330.3 166.231 1330.3 163.731 Z "
                                    pathFrom="M 1330.3 168.731 L 1330.3 168.731 L 1380.5 168.731 L 1380.5 168.731 L 1380.5 168.731 L 1380.5 168.731 L 1380.5 168.731 L 1330.3 168.731 Z"
                                    cy="6.749200000000002"
                                    cx="1581.3"
                                    j="5"
                                    val="48"
                                    barHeight="161.9808"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2527"
                                    d="M 1581.3 163.731 L 1581.3 69.11840000000001 C 1581.3 66.61840000000001 1583.8 64.11840000000001 1586.3 64.11840000000001 L 1626.5 64.11840000000001 C 1629 64.11840000000001 1631.5 66.61840000000001 1631.5 69.11840000000001 L 1631.5 163.731 C 1631.5 166.231 1629 168.731 1626.5 168.731 L 1586.3 168.731 C 1583.8 168.731 1581.3 166.231 1581.3 163.731 Z "
                                    fill="rgba(14,165,233,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="0"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 1581.3 163.731 L 1581.3 69.11840000000001 C 1581.3 66.61840000000001 1583.8 64.11840000000001 1586.3 64.11840000000001 L 1626.5 64.11840000000001 C 1629 64.11840000000001 1631.5 66.61840000000001 1631.5 69.11840000000001 L 1631.5 163.731 C 1631.5 166.231 1629 168.731 1626.5 168.731 L 1586.3 168.731 C 1583.8 168.731 1581.3 166.231 1581.3 163.731 Z "
                                    pathFrom="M 1581.3 168.731 L 1581.3 168.731 L 1631.5 168.731 L 1631.5 168.731 L 1631.5 168.731 L 1631.5 168.731 L 1631.5 168.731 L 1581.3 168.731 Z"
                                    cy="64.1174"
                                    cx="1832.3"
                                    j="6"
                                    val="31"
                                    barHeight="104.61259999999999"
                                    barWidth="50.2"
                                ></path>
                                <g
                                    id="SvgjsG2513"
                                    class="apexcharts-bar-goals-markers"
                                    style="pointer-events: none"
                                >
                                    <g
                                        id="SvgjsG2514"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2516"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2518"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2520"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2522"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2524"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2526"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                </g>
                            </g>
                            <g
                                id="SvgjsG2528"
                                class="apexcharts-series"
                                rel="2"
                                seriesName="outcome"
                                data:realIndex="1"
                            >
                                <path
                                    id="SvgjsPath2532"
                                    d="M 125.5 163.731 L 125.5 126.48660000000001 C 125.5 123.98660000000001 128 121.48660000000001 130.5 121.48660000000001 L 170.7 121.48660000000001 C 173.2 121.48660000000001 175.7 123.98660000000001 175.7 126.48660000000001 L 175.7 163.731 C 175.7 166.231 173.2 168.731 170.7 168.731 L 130.5 168.731 C 128 168.731 125.5 166.231 125.5 163.731 Z "
                                    fill="rgba(240,0,185,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="1"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 125.5 163.731 L 125.5 126.48660000000001 C 125.5 123.98660000000001 128 121.48660000000001 130.5 121.48660000000001 L 170.7 121.48660000000001 C 173.2 121.48660000000001 175.7 123.98660000000001 175.7 126.48660000000001 L 175.7 163.731 C 175.7 166.231 173.2 168.731 170.7 168.731 L 130.5 168.731 C 128 168.731 125.5 166.231 125.5 163.731 Z "
                                    pathFrom="M 125.5 168.731 L 125.5 168.731 L 175.7 168.731 L 175.7 168.731 L 175.7 168.731 L 175.7 168.731 L 175.7 168.731 L 125.5 168.731 Z"
                                    cy="121.4856"
                                    cx="376.5"
                                    j="0"
                                    val="14"
                                    barHeight="47.24439999999999"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2534"
                                    d="M 376.5 163.731 L 376.5 89.36600000000001 C 376.5 86.86600000000001 379 84.36600000000001 381.5 84.36600000000001 L 421.7 84.36600000000001 C 424.2 84.36600000000001 426.7 86.86600000000001 426.7 89.36600000000001 L 426.7 163.731 C 426.7 166.231 424.2 168.731 421.7 168.731 L 381.5 168.731 C 379 168.731 376.5 166.231 376.5 163.731 Z "
                                    fill="rgba(240,0,185,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="1"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 376.5 163.731 L 376.5 89.36600000000001 C 376.5 86.86600000000001 379 84.36600000000001 381.5 84.36600000000001 L 421.7 84.36600000000001 C 424.2 84.36600000000001 426.7 86.86600000000001 426.7 89.36600000000001 L 426.7 163.731 C 426.7 166.231 424.2 168.731 421.7 168.731 L 381.5 168.731 C 379 168.731 376.5 166.231 376.5 163.731 Z "
                                    pathFrom="M 376.5 168.731 L 376.5 168.731 L 426.7 168.731 L 426.7 168.731 L 426.7 168.731 L 426.7 168.731 L 426.7 168.731 L 376.5 168.731 Z"
                                    cy="84.36500000000001"
                                    cx="627.5"
                                    j="1"
                                    val="25"
                                    barHeight="84.36499999999998"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2536"
                                    d="M 627.5 163.731 L 627.5 106.239 C 627.5 103.739 630 101.239 632.5 101.239 L 672.7 101.239 C 675.2 101.239 677.7 103.739 677.7 106.239 L 677.7 163.731 C 677.7 166.231 675.2 168.731 672.7 168.731 L 632.5 168.731 C 630 168.731 627.5 166.231 627.5 163.731 Z "
                                    fill="rgba(240,0,185,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="1"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 627.5 163.731 L 627.5 106.239 C 627.5 103.739 630 101.239 632.5 101.239 L 672.7 101.239 C 675.2 101.239 677.7 103.739 677.7 106.239 L 677.7 163.731 C 677.7 166.231 675.2 168.731 672.7 168.731 L 632.5 168.731 C 630 168.731 627.5 166.231 627.5 163.731 Z "
                                    pathFrom="M 627.5 168.731 L 627.5 168.731 L 677.7 168.731 L 677.7 168.731 L 677.7 168.731 L 677.7 168.731 L 677.7 168.731 L 627.5 168.731 Z"
                                    cy="101.238"
                                    cx="878.5"
                                    j="2"
                                    val="20"
                                    barHeight="67.49199999999999"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2538"
                                    d="M 878.5 163.731 L 878.5 89.36600000000001 C 878.5 86.86600000000001 881 84.36600000000001 883.5 84.36600000000001 L 923.7 84.36600000000001 C 926.2 84.36600000000001 928.7 86.86600000000001 928.7 89.36600000000001 L 928.7 163.731 C 928.7 166.231 926.2 168.731 923.7 168.731 L 883.5 168.731 C 881 168.731 878.5 166.231 878.5 163.731 Z "
                                    fill="rgba(240,0,185,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="1"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 878.5 163.731 L 878.5 89.36600000000001 C 878.5 86.86600000000001 881 84.36600000000001 883.5 84.36600000000001 L 923.7 84.36600000000001 C 926.2 84.36600000000001 928.7 86.86600000000001 928.7 89.36600000000001 L 928.7 163.731 C 928.7 166.231 926.2 168.731 923.7 168.731 L 883.5 168.731 C 881 168.731 878.5 166.231 878.5 163.731 Z "
                                    pathFrom="M 878.5 168.731 L 878.5 168.731 L 928.7 168.731 L 928.7 168.731 L 928.7 168.731 L 928.7 168.731 L 928.7 168.731 L 878.5 168.731 Z"
                                    cy="84.36500000000001"
                                    cx="1129.5"
                                    j="3"
                                    val="25"
                                    barHeight="84.36499999999998"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2540"
                                    d="M 1129.5 163.731 L 1129.5 133.2358 C 1129.5 130.7358 1132 128.2358 1134.5 128.2358 L 1174.7 128.2358 C 1177.2 128.2358 1179.7 130.7358 1179.7 133.2358 L 1179.7 163.731 C 1179.7 166.231 1177.2 168.731 1174.7 168.731 L 1134.5 168.731 C 1132 168.731 1129.5 166.231 1129.5 163.731 Z "
                                    fill="rgba(240,0,185,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="1"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 1129.5 163.731 L 1129.5 133.2358 C 1129.5 130.7358 1132 128.2358 1134.5 128.2358 L 1174.7 128.2358 C 1177.2 128.2358 1179.7 130.7358 1179.7 133.2358 L 1179.7 163.731 C 1179.7 166.231 1177.2 168.731 1174.7 168.731 L 1134.5 168.731 C 1132 168.731 1129.5 166.231 1129.5 163.731 Z "
                                    pathFrom="M 1129.5 168.731 L 1129.5 168.731 L 1179.7 168.731 L 1179.7 168.731 L 1179.7 168.731 L 1179.7 168.731 L 1179.7 168.731 L 1129.5 168.731 Z"
                                    cy="128.2348"
                                    cx="1380.5"
                                    j="4"
                                    val="12"
                                    barHeight="40.4952"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2542"
                                    d="M 1380.5 163.731 L 1380.5 119.73740000000001 C 1380.5 117.23740000000001 1383 114.73740000000001 1385.5 114.73740000000001 L 1425.7 114.73740000000001 C 1428.2 114.73740000000001 1430.7 117.23740000000001 1430.7 119.73740000000001 L 1430.7 163.731 C 1430.7 166.231 1428.2 168.731 1425.7 168.731 L 1385.5 168.731 C 1383 168.731 1380.5 166.231 1380.5 163.731 Z "
                                    fill="rgba(240,0,185,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="1"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 1380.5 163.731 L 1380.5 119.73740000000001 C 1380.5 117.23740000000001 1383 114.73740000000001 1385.5 114.73740000000001 L 1425.7 114.73740000000001 C 1428.2 114.73740000000001 1430.7 117.23740000000001 1430.7 119.73740000000001 L 1430.7 163.731 C 1430.7 166.231 1428.2 168.731 1425.7 168.731 L 1385.5 168.731 C 1383 168.731 1380.5 166.231 1380.5 163.731 Z "
                                    pathFrom="M 1380.5 168.731 L 1380.5 168.731 L 1430.7 168.731 L 1430.7 168.731 L 1430.7 168.731 L 1430.7 168.731 L 1430.7 168.731 L 1380.5 168.731 Z"
                                    cy="114.7364"
                                    cx="1631.5"
                                    j="5"
                                    val="16"
                                    barHeight="53.993599999999994"
                                    barWidth="50.2"
                                ></path>
                                <path
                                    id="SvgjsPath2544"
                                    d="M 1631.5 163.731 L 1631.5 133.2358 C 1631.5 130.7358 1634 128.2358 1636.5 128.2358 L 1676.7 128.2358 C 1679.2 128.2358 1681.7 130.7358 1681.7 133.2358 L 1681.7 163.731 C 1681.7 166.231 1679.2 168.731 1676.7 168.731 L 1636.5 168.731 C 1634 168.731 1631.5 166.231 1631.5 163.731 Z "
                                    fill="rgba(240,0,185,0.85)"
                                    fill-opacity="1"
                                    stroke-opacity="1"
                                    stroke-linecap="round"
                                    stroke-width="0"
                                    stroke-dasharray="0"
                                    class="apexcharts-bar-area"
                                    index="1"
                                    clip-path="url(#gridRectMasklnthm44x)"
                                    pathTo="M 1631.5 163.731 L 1631.5 133.2358 C 1631.5 130.7358 1634 128.2358 1636.5 128.2358 L 1676.7 128.2358 C 1679.2 128.2358 1681.7 130.7358 1681.7 133.2358 L 1681.7 163.731 C 1681.7 166.231 1679.2 168.731 1676.7 168.731 L 1636.5 168.731 C 1634 168.731 1631.5 166.231 1631.5 163.731 Z "
                                    pathFrom="M 1631.5 168.731 L 1631.5 168.731 L 1681.7 168.731 L 1681.7 168.731 L 1681.7 168.731 L 1681.7 168.731 L 1681.7 168.731 L 1631.5 168.731 Z"
                                    cy="128.2348"
                                    cx="1882.5"
                                    j="6"
                                    val="12"
                                    barHeight="40.4952"
                                    barWidth="50.2"
                                ></path>
                                <g
                                    id="SvgjsG2530"
                                    class="apexcharts-bar-goals-markers"
                                    style="pointer-events: none"
                                >
                                    <g
                                        id="SvgjsG2531"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2533"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2535"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2537"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2539"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2541"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                    <g
                                        id="SvgjsG2543"
                                        className="apexcharts-bar-goals-groups"
                                    ></g>
                                </g>
                            </g>
                            <g
                                id="SvgjsG2512"
                                class="apexcharts-datalabels"
                                data:realIndex="0"
                            ></g>
                            <g
                                id="SvgjsG2529"
                                class="apexcharts-datalabels"
                                data:realIndex="1"
                            ></g>
                        </g>
                        <g
                            id="SvgjsG2548"
                            class="apexcharts-grid-borders"
                        >
                            <line
                                id="SvgjsLine2549"
                                x1="0"
                                y1="0"
                                x2="1757"
                                y2="0"
                                stroke="#e0e0e0"
                                stroke-dasharray="0"
                                stroke-linecap="butt"
                                class="apexcharts-gridline"
                            ></line>
                        </g>
                        <line
                            id="SvgjsLine2557"
                            x1="0"
                            y1="0"
                            x2="1757"
                            y2="0"
                            stroke="#b6b6b6"
                            stroke-dasharray="0"
                            stroke-width="1"
                            stroke-linecap="butt"
                            class="apexcharts-ycrosshairs"
                        ></line>
                        <line
                            id="SvgjsLine2558"
                            x1="0"
                            y1="0"
                            x2="1757"
                            y2="0"
                            stroke-dasharray="0"
                            stroke-width="0"
                            stroke-linecap="butt"
                            class="apexcharts-ycrosshairs-hidden"
                        ></line>
                        <g
                            id="SvgjsG2559"
                            class="apexcharts-xaxis"
                            transform="translate(0, 0)"
                        >
                            <g
                                id="SvgjsG2560"
                                class="apexcharts-xaxis-texts-g"
                                transform="translate(0, -4)"
                            ><text
                                    id="SvgjsText2562"
                                    font-family="Helvetica, Arial, sans-serif"
                                    x="125.5"
                                    y="197.73"
                                    text-anchor="middle"
                                    dominant-baseline="auto"
                                    font-size="12px"
                                    font-weight="400"
                                    fill="#373d3f"
                                    class="apexcharts-text apexcharts-xaxis-label "
                                    style="font-family: Helvetica, Arial, sans-serif;"
                                >
                                    <tspan id="SvgjsTspan2563">Jan</tspan>
                                    <title>Jan</title>
                                </text><text
                                    id="SvgjsText2565"
                                    font-family="Helvetica, Arial, sans-serif"
                                    x="376.5"
                                    y="197.73"
                                    text-anchor="middle"
                                    dominant-baseline="auto"
                                    font-size="12px"
                                    font-weight="400"
                                    fill="#373d3f"
                                    class="apexcharts-text apexcharts-xaxis-label "
                                    style="font-family: Helvetica, Arial, sans-serif;"
                                >
                                    <tspan id="SvgjsTspan2566">Feb</tspan>
                                    <title>Feb</title>
                                </text><text
                                    id="SvgjsText2568"
                                    font-family="Helvetica, Arial, sans-serif"
                                    x="627.5"
                                    y="197.73"
                                    text-anchor="middle"
                                    dominant-baseline="auto"
                                    font-size="12px"
                                    font-weight="400"
                                    fill="#373d3f"
                                    class="apexcharts-text apexcharts-xaxis-label "
                                    style="font-family: Helvetica, Arial, sans-serif;"
                                >
                                    <tspan id="SvgjsTspan2569">Mar</tspan>
                                    <title>Mar</title>
                                </text><text
                                    id="SvgjsText2571"
                                    font-family="Helvetica, Arial, sans-serif"
                                    x="878.5"
                                    y="197.73"
                                    text-anchor="middle"
                                    dominant-baseline="auto"
                                    font-size="12px"
                                    font-weight="400"
                                    fill="#373d3f"
                                    class="apexcharts-text apexcharts-xaxis-label "
                                    style="font-family: Helvetica, Arial, sans-serif;"
                                >
                                    <tspan id="SvgjsTspan2572">Apr</tspan>
                                    <title>Apr</title>
                                </text><text
                                    id="SvgjsText2574"
                                    font-family="Helvetica, Arial, sans-serif"
                                    x="1129.5"
                                    y="197.73"
                                    text-anchor="middle"
                                    dominant-baseline="auto"
                                    font-size="12px"
                                    font-weight="400"
                                    fill="#373d3f"
                                    class="apexcharts-text apexcharts-xaxis-label "
                                    style="font-family: Helvetica, Arial, sans-serif;"
                                >
                                    <tspan id="SvgjsTspan2575">May</tspan>
                                    <title>May</title>
                                </text><text
                                    id="SvgjsText2577"
                                    font-family="Helvetica, Arial, sans-serif"
                                    x="1380.5"
                                    y="197.73"
                                    text-anchor="middle"
                                    dominant-baseline="auto"
                                    font-size="12px"
                                    font-weight="400"
                                    fill="#373d3f"
                                    class="apexcharts-text apexcharts-xaxis-label "
                                    style="font-family: Helvetica, Arial, sans-serif;"
                                >
                                    <tspan id="SvgjsTspan2578">Jun</tspan>
                                    <title>Jun</title>
                                </text><text
                                    id="SvgjsText2580"
                                    font-family="Helvetica, Arial, sans-serif"
                                    x="1631.5"
                                    y="197.73"
                                    text-anchor="middle"
                                    dominant-baseline="auto"
                                    font-size="12px"
                                    font-weight="400"
                                    fill="#373d3f"
                                    class="apexcharts-text apexcharts-xaxis-label "
                                    style="font-family: Helvetica, Arial, sans-serif;"
                                >
                                    <tspan id="SvgjsTspan2581">Jul</tspan>
                                    <title>Jul</title>
                                </text></g>
                        </g>
                        <g
                            id="SvgjsG2584"
                            class="apexcharts-yaxis-annotations"
                        ></g>
                        <g
                            id="SvgjsG2585"
                            class="apexcharts-xaxis-annotations"
                        ></g>
                        <g
                            id="SvgjsG2586"
                            class="apexcharts-point-annotations"
                        ></g>
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
                            style="background-color: rgb(14, 165, 233);"
                        ></span>
                        <div
                            class="apexcharts-tooltip-text"
                            style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                        >
                            <div class="apexcharts-tooltip-y-group"><span
                                    class="apexcharts-tooltip-text-y-label"></span><span
                                    class="apexcharts-tooltip-text-y-value"
                                ></span></div>
                            <div class="apexcharts-tooltip-goals-group"><span
                                    class="apexcharts-tooltip-text-goals-label"
                                ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                            <div class="apexcharts-tooltip-z-group"><span
                                    class="apexcharts-tooltip-text-z-label"></span><span
                                    class="apexcharts-tooltip-text-z-value"
                                ></span></div>
                        </div>
                    </div>
                    <div
                        class="apexcharts-tooltip-series-group"
                        style="order: 2;"
                    ><span
                            class="apexcharts-tooltip-marker"
                            style="background-color: rgb(240, 0, 185);"
                        ></span>
                        <div
                            class="apexcharts-tooltip-text"
                            style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"
                        >
                            <div class="apexcharts-tooltip-y-group"><span
                                    class="apexcharts-tooltip-text-y-label"></span><span
                                    class="apexcharts-tooltip-text-y-value"
                                ></span></div>
                            <div class="apexcharts-tooltip-goals-group"><span
                                    class="apexcharts-tooltip-text-goals-label"
                                ></span><span class="apexcharts-tooltip-text-goals-value"></span></div>
                            <div class="apexcharts-tooltip-z-group"><span
                                    class="apexcharts-tooltip-text-z-label"></span><span
                                    class="apexcharts-tooltip-text-z-value"
                                ></span></div>
                        </div>
                    </div>
                </div>
                <div
                    class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                    <div class="apexcharts-yaxistooltip-text"></div>
                </div>
            </div>
        </div>
    </div>
</div>
{/literal}

