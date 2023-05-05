import Vue from 'vue';
import Echarts from 'vue-echarts';
import 'echarts/lib/component/tooltip'
import 'echarts/lib/chart/bar'
import 'echarts/lib/chart/line'
import 'echarts/lib/chart/pie'
import 'echarts/lib/component/legend'
import 'echarts/lib/component/title'
import 'echarts/lib/component/visualMap'
import 'echarts/lib/chart/scatter'
import 'echarts/lib/component/polar'
import 'echarts/lib/component/grid'
Vue.component('chart', Echarts);