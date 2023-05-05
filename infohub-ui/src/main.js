import Vue from 'vue'
import App from './App.vue'
import VueRouter from 'vue-router'
import IndexComponent from './components/admin/dashboard/IndexComponent.vue'
import DummyView from './components/admin/dashboard/DummyView.vue'
import IotComponent from './components/admin/dashboard/IotComponent.vue'
import InboxComponent from './components/admin/app/InboxComponent.vue'
import ChatComponent from './components/admin/app/ChatComponent.vue'
import CalendarComponent from './components/admin/app/CalendarComponent.vue'
import ComposeComponent from './components/admin/app/ComposeComponent.vue'
import ContactGrideComponent from './components/admin/app/ContactGrideComponent.vue'
import DocumentsComponent from './components/admin/filemanager/DocumentsComponent.vue'
import FileMediaComponent from './components/admin/filemanager/FileMediaComponent.vue'
import FileImageComponent from './components/admin/filemanager/FileImageComponent.vue'
import PostComponent from './components/admin/blogs/PostComponent.vue'
import ListComponent from './components/admin/blogs/ListComponent.vue'
import DetailsComponent from './components/admin/blogs/DetailsComponent.vue'
import TypographyComponent from './components/admin/uielements/TypographyComponent.vue'
import TabsComponent from './components/admin/uielements/TabsComponent.vue'
import ButtonsComponent from './components/admin/uielements/ButtonsComponent.vue'
import BootstrapComponent from './components/admin/uielements/BootstrapComponent.vue'
import IconComponent from './components/admin/uielements/IconComponent.vue'
import NotificationComponent from './components/admin/uielements/NotificationComponent.vue'
import ColorComponent from './components/admin/uielements/ColorComponent.vue'
import ListGroupComponent from './components/admin/uielements/ListGroupComponent.vue'
import MediaComponent from './components/admin/uielements/MediaComponent.vue'
import ModalComponent from './components/admin/uielements/ModalComponent.vue'
import ProgressbarComponent from './components/admin/uielements/ProgressbarComponent.vue'
import DataComponent from './components/admin/widgets/DataComponent.vue'
import WeatherComponent from './components/admin/widgets/WeatherComponent.vue'
import BlogComponent from './components/admin/widgets/BlogComponent.vue'
import EcommerceComponent from './components/admin/widgets/EcommerceComponent.vue'
import LoginComponent from './components/admin/authentication/LoginComponent.vue'
import RegisterComponent from './components/admin/authentication/RegisterComponent.vue'
import LockscreenComponent from './components/admin/authentication/LockscreenComponent.vue'
import ForgotPasswordComponent from './components/admin/authentication/ForgotPasswordComponent.vue'
import FourZeroFourComponent from './components/admin/authentication/FourZeroFourComponent.vue'
import FourZeroThreeComponent from './components/admin/authentication/FourZeroThreeComponent.vue'
import FiveZeroZeroComponent from './components/admin/authentication/FiveZeroZeroComponent.vue'
import FiveZeroThreeComponent from './components/admin/authentication/FiveZeroThreeComponent.vue'
import BlankComponent from './components/admin/pages/BlankComponent.vue'
import ProfileComponent from './components/admin/pages/ProfileComponent.vue'
import ProfiletwoComponent from './components/admin/pages/ProfiletwoComponent.vue'
import GalleryComponent from './components/admin/pages/GalleryComponent.vue'
import TimelineComponent from './components/admin/pages/TimelineComponent.vue'
import PricingComponent from './components/admin/pages/PricingComponent.vue'
import InvoicesComponent from './components/admin/pages/InvoicesComponent.vue'
import InvoicesTwoComponent from './components/admin/pages/InvoicesTwoComponent.vue'
import SearchComponent from './components/admin/pages/SearchComponent.vue'
import HelperClassComponent from './components/admin/pages/HelperClassComponent.vue'
import ProjectsListComponent from './components/admin/pages/ProjectsListComponent.vue'
import MaintananceComponent from './components/admin/pages/MaintananceComponent.vue'
import TestimonialsComponent from './components/admin/pages/TestimonialsComponent.vue'
import FaqComponent from './components/admin/pages/FaqComponent.vue'
import TeamsBoardComponent from './components/admin/pages/TeamsBoardComponent.vue'
import ValidationComponent from './components/admin/forms/ValidationComponent.vue'
import BasicFormComponent from './components/admin/forms/BasicFormComponent.vue'
import NormalComponent from './components/admin/table/NormalComponent.vue'
import EChartsComponent from './components/admin/charts/EChartsComponent.vue'
import LeafletComponent from './components/admin/maps/LeafletComponent.vue'
import { LMap, LTileLayer, LMarker } from 'vue2-leaflet';
import 'leaflet/dist/leaflet.css';

Vue.component('l-map', LMap);
Vue.component('l-tile-layer', LTileLayer);
Vue.component('l-marker', LMarker);
import "./vee-validate";
import "@/plugins/echarts"
import FullCalendar from 'vue-full-calendar'
import 'fullcalendar/dist/fullcalendar.css'
import 'v-tooltip/dist/v-tooltip.css'
import VTooltip from 'v-tooltip'
import VueToast from 'vue-toast-notification';
import 'vue-toast-notification/dist/theme-sugar.css'
import VueCarousel from 'vue-carousel'
import VueCircleControlSlider from 'vue-circle-control-slider'
import 'vue-circle-control-slider/dist/VueCircleControlSlider.css'
Vue.component('VueCircleControlSlider', VueCircleControlSlider);
Vue.use(VueCarousel)
Vue.use(VueToast)
Vue.use(VTooltip)
Vue.use(FullCalendar)
Vue.use(VueRouter)
window.Event = new Vue();

const routes= [
    {
        path: '',
        name: 'dashboard',
        redirect: '/dashboard/index',
        component: DummyView,
        meta: {
            breadCrumb: 'Dashboard',
        },
        children: [
            { path: 'dashboard/index', component: IndexComponent, meta: { breadCrumb: "Index", title: "Dashboard", },},
            { path: 'dashboard/iot', component: IotComponent,meta: { breadCrumb: "Iot Dashboard", title: "Iot Dashboard", }, },
        ]
    },
    {
        path: '/app',
        redirect: '/app-*',
        component: DummyView,
        meta: {
            breadCrumb: 'App',
        },
        children: [
            {
                path: "app-inbox",
                component: {
                    render(c) {
                    return c("router-view");
                    }
                },
                meta: { breadCrumb: "Inbox"},
                children: [{ path: "",component: InboxComponent, meta:{ title: "Inbox", },},
                        {path: "compose",component: ComposeComponent,meta: { breadCrumb: "Compose", title: "Compose", },},
                ],
            },
            { path: 'app-chat', component: ChatComponent, meta: { breadCrumb: "Chat", title: "Chat", },},
            { path: 'app-calendar', component: CalendarComponent, meta: { breadCrumb: "Calendar", title: "Calendar", },},
            { path: 'app-contact-grid', component: ContactGrideComponent, meta: { breadCrumb: "Contact Card", title: "Contact Card",},},
        ]
    },
    {
        path: '/file-manager',
        redirect: '/file-*',
        component: DummyView,
        meta: {
            breadCrumb: 'File Manager',
        },
        children: [
            { path: 'file-documents', component: DocumentsComponent, meta: { breadCrumb: "File Documents", title: "File Documents" },},
            { path: 'file-media', component: FileMediaComponent, meta: { breadCrumb: "File Media", title: "File Media" },},
            { path: 'file-images', component: FileImageComponent, meta: { breadCrumb: "File Images", title: "File Images" },},
        ]
    },
    {
        path: '/blogs',
        redirect: '/blog-*',
        component: DummyView,
        meta: {
            breadCrumb: 'Blog',
        },
        children: [
            { path: 'blog-post', component: PostComponent, meta: { breadCrumb: "Blog Post", title: "Blog Post" },},
            { path: 'blog-list', component: ListComponent, meta: { breadCrumb: "Blog List", title: "Blog List" },},
            { path: 'blog-details', component: DetailsComponent, meta: { breadCrumb: "Blog Details", title: "Blog Details" },},
        ]
    },
    {
        path: '/ui-elements',
        redirect: '/ui-*',
        component: DummyView,
        meta: {
            breadCrumb: 'UI Elements',
        },
        children: [
            { path: 'ui-typography', component: TypographyComponent, meta: { breadCrumb: "Typography", title: "Typography" },},
            { path: 'ui-tabs', component: TabsComponent, meta: { breadCrumb: "Tabs", title: "Tabs" },},
            { path: 'ui-buttons', component: ButtonsComponent, meta: { breadCrumb: "Buttons", title: "Buttons" },},
            { path: 'ui-bootstrap', component: BootstrapComponent, meta: { breadCrumb: "Bootstrap UI", title: "Bootstrap UI" },},
            { path: 'ui-icons', component: IconComponent, meta: { breadCrumb: "Icons", title: "Icons" },},
            { path: 'ui-notifications', component: NotificationComponent, meta: { breadCrumb: "Notifications", title: "Notifications" },},
            { path: 'ui-colors', component: ColorComponent, meta: { breadCrumb: "Colors", title: "Colors" },},
            { path: 'ui-listgroup', component: ListGroupComponent, meta: { breadCrumb: "List Group", title: "List Group" },},
            { path: 'ui-media', component: MediaComponent, meta: { breadCrumb: "Media Object", title: "Media Object" },},
            { path: 'ui-modals', component:ModalComponent, meta: { breadCrumb: "Modals", title: "Modals" },},
            { path: 'ui-progressbars', component: ProgressbarComponent, meta: { breadCrumb: "Progressbar", title: "Progressbar" },},
        ]
    },
    {
        path: '/widgets',
        redirect: '/widgets-*',
        component: DummyView,
        meta: {
            breadCrumb: 'Blog',
        },
        children: [
            { path: 'widgets-data', component: DataComponent, meta: { breadCrumb: "Widgets Data",title: "Widgets Data" },},
            { path: 'widgets-weather', component: WeatherComponent, meta: { breadCrumb: "Widgets Weather",title: "Widgets Weather" },},
            { path: 'widgets-blog', component: BlogComponent, meta: { breadCrumb: "Widgets Blog",title: "Widgets Blog" },},
            { path: 'widgets-ecommerce', component: EcommerceComponent, meta: { breadCrumb: "Widgets eCommerce",title: "Widgets eCommerce" },},
        ]
    },
    {
        path: '/authentication',
        redirect: '/page-*',
        component: DummyView,
        children: [
            { path: 'page-login', component: LoginComponent,name: 'login', meta: { title: "Login" }},
            { path: 'page-register', component: RegisterComponent ,name: 'register', meta: { title: "Register" }},
            { path: 'page-lockscreen', component: LockscreenComponent ,name: 'lockscreen', meta: { title: "Lockscreen" }},
            { path: 'page-forgot-password', component: ForgotPasswordComponent ,name: 'fpassword', meta: { title: "Forgot Password" }},
            { path: 'page-404', component: FourZeroFourComponent ,name: '404', meta: { title: "404 Page" }},
            { path: 'page-403', component: FourZeroThreeComponent ,name: '403', meta: { title: "403 Page" }},
            { path: 'page-500', component: FiveZeroZeroComponent ,name: '500', meta: { title: "500 Page" }},
            { path: 'page-503', component: FiveZeroThreeComponent ,name: '503', meta: { title: "503 Page" }},
        ]
    },
    {
        path: '/pages',
        redirect: '/page-*',
        component: DummyView,
        meta: {
            breadCrumb: 'Pages',
        },
        children: [
            { path: 'page-blank', component: BlankComponent, meta: { breadCrumb: "Page Blank",title: "Page Blank" },},
            { path: 'page-profile', component: ProfileComponent, meta: { breadCrumb: "User Profile",title: "User Profile" },},
            { path: 'page-profile2', component: ProfiletwoComponent, meta: { breadCrumb: "User Profile",title: "User Profile v2" },},
            { path: 'page-gallery', component: GalleryComponent, meta: { breadCrumb: "Gallery",title: "Gallery" },},
            { path: 'page-timeline', component: TimelineComponent, meta: { breadCrumb: "Timeline",title: "Timeline" },},
            { path: 'page-pricing', component: PricingComponent, meta: { breadCrumb: "Pricing",title: "Pricing" },},
            { path: 'page-invoices', component: InvoicesComponent, meta: { breadCrumb: "Invoices",title: "Invoices" },},
            { path: 'page-invoices2', component: InvoicesTwoComponent, meta: { breadCrumb: "Invoices 2",title: "Invoices 2" },},
            { path: 'page-search-results', component: SearchComponent, meta: { breadCrumb: "Search Results",title: "Search Results" },},
            { path: 'page-helper-class', component: HelperClassComponent, meta: { breadCrumb: "Helper Class",title: "Helper Class" },},
            { path: 'page-teams-board', component: TeamsBoardComponent, meta: { breadCrumb: "Teams Board",title: "Teams Board" },},
            { path: 'page-projects-list', component: ProjectsListComponent, meta: { breadCrumb: "Projects List",title: "Projects List" },},
            { path: 'page-maintanance', component: MaintananceComponent,name: 'maintanance', meta: {title: "Maintanance" },},
            { path: 'page-testimonials', component: TestimonialsComponent, meta: { breadCrumb: "Testimonials",title: "Testimonials" },},
            { path: 'page-faq', component: FaqComponent, meta: { breadCrumb: "FAQs",title: "FAQs" },},
        ]
    },
    {
        path: '/forms',
        redirect: '/forms-*',
        component: DummyView,
        meta: {
            breadCrumb: 'Form',
        },
        children: [
            { path: 'forms-validation', component: ValidationComponent, meta: { breadCrumb: "Form Validation",title: "Form Validation"  },},
            { path: 'forms-basic', component: BasicFormComponent, meta: { breadCrumb: "Basic Form Elements",title: "Basic Form Elements"  },},
        ]
    },
    {
        path: '/table',
        redirect: '/table-*',
        component: DummyView,
        meta: {
            breadCrumb: 'Table',
        },
        children: [
            { path: 'table-normal', component: NormalComponent, meta: { breadCrumb: "Table Normal",title: "Table Normal" },},
        ]
    },
    {
        path: '/charts',
        redirect: '/chart-*',
        component: DummyView,
        meta: {
            breadCrumb: 'Charts',
        },
        children: [
            { path: 'chart-echarts', component: EChartsComponent, meta: { breadCrumb: "E-Charts",title: "E-Charts" },},
        ]
    },
    {
        path: '/maps',
        redirect: '/map-*',
        component: DummyView,
        meta: {
            breadCrumb: 'Maps',
        },
        children: [
            { path: 'map-leaflet', component: LeafletComponent, meta: { breadCrumb: "Leaflet Map",title: "Leaflet Map" },},
        ]
    },
    {
        path: '*',
        redirect: '/dashboard/index'
    }
]
const router = new VueRouter({
  mode: 'history',
  routes,
  base: '/admin'
})
router.afterEach((to) => {
    Vue.nextTick( () => {
        document.title = ':: Lucid Vue :: '+ to.meta.title;
    });
  })
Vue.config.productionTip = false
new Vue({
  router:router,
  render: h => h(App),
}).$mount('#app')