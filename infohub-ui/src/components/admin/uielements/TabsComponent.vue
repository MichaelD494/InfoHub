<template>
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-6 col-md-12" v-for="simpleTab in simpleTabDetails" :key="simpleTab.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{ simpleTab.title }} <small>{{ simpleTab.small_tag_content }}<code class="highlighter-rouge">{{ simpleTab.code_content }}</code> 
                                {{ simpleTab.content }} <a href="javascript:void();">{{ simpleTab.url_content }}</a>.</small>
                            </h2>
                        </div>
                        <div class="body">
                            <ul class="nav nav-tabs">
                                <li class="nav-item" v-for="(tabs,index) in simpleTab.nav_tabs" :key="tabs.nav_title">
                                    <a href="javascript:void();" class="nav-link" :class="{'active show': activeIndex === index}" @click='setActive(index)'>
                                        {{ tabs.nav_title }}
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" v-for="(details,index) in simpleTab.tab_details" :key="details.tab_title" :class="{ 'active show': activeIndex === index}">
                                    <h6>{{ details.tab_title }}</h6>
                                    <p>{{ details.tab_content }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12" v-for="exampleTab in exampleTab1Details" :key=" exampleTab.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{ exampleTab.title }}<small><code class="highlighter-rouge">{{ exampleTab.code_content }}</code></small></h2>
                        </div>
                        <div class="body">
                            <ul class="nav nav-tabs-new">
                                <li class="nav-item" v-for="(tabs,index) in exampleTab.nav_tabs" :key=" tabs.nav_title">
                                    <a href="javascript:void();" class="nav-link" :class="{ 'active show': exampleTab1Index === index}"  @click="tabActive(index)">{{ tabs.nav_title }}</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" v-for="(details,index) in exampleTab.tab_details" :key="details.tab_title" :class="{ 'active show': exampleTab1Index === index}">
                                    <h6>{{ details.tab_title }}</h6>
                                    <p>{{ details.tab_content }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12" v-for="exampleTab in exampleTab2Details" :key=" exampleTab.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{ exampleTab.title }}<small><code class="highlighter-rouge">{{ exampleTab.code_content }}</code></small></h2>
                        </div>
                        <div class="body">
                            <ul class="nav nav-tabs-new2">
                                <li class="nav-item" v-for="(tabs,index) in exampleTab.nav_tabs" :key="tabs.nav_title">
                                    <a href="javascript:void();" class="nav-link" :class="{ 'active show': exampleTab2Index === index}"  @click="exampleTabActive(index)">{{ tabs.nav_title }}</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" v-for="(details,index) in exampleTab.tab_details" :key="details.tab_title" :class="{ 'active show': exampleTab2Index === index}">
                                    <h6>{{ details.tab_title }}</h6>
                                    <p>{{ details.tab_content }}</p>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12" v-for="tab in tabWithIconDetails" :key="tab.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{ tab.title }}</h2>
                        </div>
                        <div class="body">
                            <ul class="nav nav-tabs">
                                <li class="nav-item" v-for="(tabs,index) in tab.nav_tabs" :key="tabs.nav_title">
                                    <a href="javascript:void();" class="nav-link" :class="{ 'active show': tabsWithIconIndex === index}"  @click="tabsWithIconActive(index)"><i :class="`${ tabs.class_nm }`"></i> {{ tabs.nav_title }}</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" v-for="(details,index) in tab.tab_details" :key="details.tab_title" :class="{ 'active show': tabsWithIconIndex === index}">
                                    <h6>{{ details.tab_title }}</h6>
                                    <p>{{ details.tab_content }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12" v-for="tab in tabsWithIconDetails" :key="tab.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{ tab.title }}</h2>
                        </div>
                        <div class="body">
                            <ul class="nav nav-tabs">
                                <li class="nav-item" v-for="(tabs,index) in tab.nav_tabs" :key="tabs.nav_title">
                                    <a href="javascript:void();" class="nav-link" :class="{ 'active show': tabWithIconIndex === index}"  @click="tabWithIconActive(index)"><i :class="`${ tabs.class_nm }`"></i> {{ tabs.nav_title }}</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" v-for="(details,index) in tab.tab_details" :key="details.tab_title" :class="{ 'active show': tabWithIconIndex === index}">
                                    <h6>{{ details.tab_title }}</h6>
                                    <p>{{ details.tab_content }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Tabs with dropdowns</h2>
                        </div>
                        <div class="body">
                            <ul class="nav nav-tabs">
                                <li class="nav-item"><a class="nav-link active show" data-toggle="tab" href="javascript:void(0);">Active </a></li>
                                <li class="nav-item dropdown"  :class="{ 'show': isActiveDropdawn}"  @click="isActiveDropdawn = !isActiveDropdawn" v-click-outside="ActiveDropdawnOutside">
                                    <a class="nav-link dropdown-toggle" href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                    <div class="dropdown-menu"  :class="{ 'show': isActiveDropdawn}">
                                        <a class="dropdown-item" href="javascript:void(0);">Action</a>
                                        <a class="dropdown-item" href="javascript:void(0);">Another action</a>
                                        <a class="dropdown-item" href="javascript:void(0);">Something else here</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="javascript:void(0);">Separated link</a>
                                    </div>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="javascript:void(0);">Link</a></li>
                                <li class="nav-item"><a class="nav-link disabled" href="javascript:void(0);">Disabled</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane show active" id="Active">
                                    <h6>Home</h6>
                                    <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
</template>
<script>
import BreadCrumb from '@/components/BreadCrumb'
export default {
    name:'TabsComponent',
    components: {
       BreadCrumb,
    },data(){
        return{
            activeIndex: 0,
            exampleTab1Index: 0,
            exampleTab2Index: 0,
            tabsWithIconIndex: 0,
            tabWithIconIndex: 0,
            isActiveDropdawn: false,
            simpleTabDetails:[
                {
                    title: 'Bootstrap Simple Example Tab',
                    small_tag_content:'Takes the basic nav from above and adds the ',
                    code_content:'.nav-tabs',
                    content: 'class to generate a tabbed interface. Use them to create tabbable regions with our',
                    url_content: 'tab JavaScript plugin',
                    nav_tabs: [
                        {
                            nav_title: 'Home'
                        },
                        {
                            nav_title: 'Profile'
                        }, 
                        {
                            nav_title: 'Contact'
                        },
                    ],
                    tab_details:[
                        {
                            tab_title:'Home',
                            tab_content:'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.',
                        },
                        {
                            tab_title:'Profile',
                            tab_content:'Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeneys organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie.',
                        }, 
                        {
                            tab_title:'Contact',
                            tab_content:'Food truck fixie locavore, accusamus mcsweeneys marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS.',
                        },
                    ]
                },
                
            ],
            exampleTab1Details:[
                {
                    title: 'Example Tab 2',
                    code_content:'.nav-tabs-new',
                    nav_tabs: [
                        {
                            nav_title:'Home'
                        },
                        {
                            nav_title:'Profile'
                        }, 
                        {
                            nav_title:'Contact'
                        },
                    ],
                    tab_details:[
                        {
                            tab_title:'Home',
                            tab_content:'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.',
                        },
                        {
                            tab_title:'Profile',
                            tab_content:'Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeneys organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie.',
                        }, 
                        {
                            tab_title:'Contact',
                            tab_content:'Food truck fixie locavore, accusamus mcsweeneys marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS.',
                        },
                    ]
                },
                
            ],
            exampleTab2Details:[
                {
                    title: 'Example Tab 3',
                    code_content:'.nav-tabs-new2',
                    nav_tabs: [
                        {
                            nav_title:'Home'
                        },
                        {
                            nav_title:'Profile'
                        }, 
                        {
                            nav_title:'Contact'
                        },
                    ],
                    tab_details:[
                        {
                            tab_title:'Home',
                            tab_content:'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.',
                        },
                        {
                            tab_title:'Profile',
                            tab_content:'Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeneys organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie.',
                        }, 
                        {
                            tab_title:'Contact',
                            tab_content:'Food truck fixie locavore, accusamus mcsweeneys marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS.',
                        },
                    ]
                },
                
            ],
            tabWithIconDetails:[
                {
                    title: 'Tabs With Icon',
                    code_content:'.nav-tabs-new2',
                    nav_tabs: [
                        {
                            class_nm:'fa fa-home',
                            nav_title:'Home'
                        },
                        {
                            class_nm:'fa fa-user',
                            nav_title:'Profile'
                        }, 
                        {
                            class_nm:'fa fa-vcard',
                            nav_title:'Contact'
                        },
                    ],
                    tab_details:[
                        {
                            tab_title:'Home',
                            tab_content:'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.',
                        },
                        {
                            tab_title:'Profile',
                            tab_content:'Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeneys organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie.',
                        }, 
                        {
                            tab_title:'Contact',
                            tab_content:'Food truck fixie locavore, accusamus mcsweeneys marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS.',
                        },
                    ]
                },
                
            ],
            tabsWithIconDetails:[
                {
                    title: 'Tabs With Only Icon Title',
                    code_content:'.nav-tabs-new2',
                    nav_tabs: [
                        {
                            class_nm:'fa fa-home',
                        },
                        {
                            class_nm:'fa fa-user',
                        }, 
                        {
                            class_nm:'fa fa-vcard',
                        },
                    ],
                    tab_details:[
                        {
                            tab_title:'Home',
                            tab_content:'Raw denim you probably havent heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.',
                        },
                        {
                            tab_title:'Profile',
                            tab_content:'Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeneys organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie.',
                        }, 
                        {
                            tab_title:'Contact',
                            tab_content:'Food truck fixie locavore, accusamus mcsweeneys marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS.',
                        },
                    ]
                },
                
            ],
        }
    },methods: {
        setActive(index) {
            this.activeIndex = index
        },
        tabActive(index) {
            this.exampleTab1Index = index 
        },
        exampleTabActive(index) {
            this.exampleTab2Index = index 
        },
        tabsWithIconActive(index) {
            this.tabsWithIconIndex = index 
        },
        tabWithIconActive(index) {
            this.tabWithIconIndex = index 
        },
        ActiveDropdawnOutside: function() {
           this.isActiveDropdawn = false
        },
    },directives: {
    'click-outside': {
        bind: function(el, binding) {
            // Define Handler and cache it on the element
            const bubble = binding.modifiers.bubble
            const handler = (e) => {
                if (bubble || (!el.contains(e.target) && el !== e.target)) {
                    binding.value(e)
                }
            }
            el.__vueClickOutside__ = handler

            // add Event Listeners
            document.addEventListener('click', handler)
            },
        }
    }
}
</script>
<style scoped>

</style>