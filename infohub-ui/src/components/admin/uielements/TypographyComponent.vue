<template>
    <div id="main-content" class="file_manager">
        <div class="container-fluid">
            <div class="block-header">
                <bread-crumb></bread-crumb>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Header </h2>
                        </div>
                        <div class="body">
                            <h1>Dashboard Heading 1</h1>
                            <h2>Dashboard Heading 2</h2>
                            <h3>Dashboard Heading 3</h3>
                            <h4>Dashboard Heading 4</h4>
                            <h5>Dashboard Heading 5</h5>
                            <h6>Dashboard Heading 6</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Paragraph</h2>
                        </div>
                        <div class="body">
                            <p>Appropriately benchmark web-enabled bandwidth and functionalized leadership skills. Conveniently syndicate global opportunities without interactive methods of empowerment. Collaboratively conceptualize user-centric e-tailers for visionary methodologies. Dramatically myocardinate. Phosfluorescently disintermediate unique resources whereas reliable mindshare. Competently optimize client-focused infrastructures vis-a-vis e-business human capital. Uniquely formulate sustainable benefits whereas functional results. Energistically myocardinate bleeding-edge e-business.</p>
                            <hr>
                            <h6>Blockquote Primary</h6>
                            <blockquote>
                                <p class="blockquote blockquote-primary">
                                    "I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at."
                                    <br>
                                    <br>
                                    <small>
                                        - ThemeMakker
                                    </small>
                                </p>
                            </blockquote>

                            <h6>Blockquote Info</h6>
                            <blockquote>
                                <p class="blockquote blockquote-info">
                                    "I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at."
                                    <br>
                                    <br>
                                    <small>
                                        - ThemeMakker
                                    </small>
                                </p>
                            </blockquote>
                            
                            <h6>Blockquote Danger</h6>
                            <blockquote>
                                <p class="blockquote blockquote-danger">
                                    "I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at."
                                    <br>
                                    <br>
                                    <small>
                                        - ThemeMakker
                                    </small>
                                </p>
                            </blockquote>
                            <hr>
                            <div class="row clearfix">
                                <div class="col-md-3" v-for="(paragraph,index) in paragraphDetails" :key="index">
                                    <p :class="`${ paragraph.class_nm }`"> <b>{{ paragraph.title }}</b> </p>
                                    <div :class="`${ paragraph.class_nm }`"> {{ paragraph.detail }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 col-md-12" v-for="textStyle in textStyleDetails" :key="textStyle.title">
                    <div class="card">
                        <div class="header">
                            <h2>{{  textStyle.title }}</h2>
                        </div>
                        <div class="body">
                            <p v-for="details in textStyle.details" :key="details.class_nm" :class="`${details.class_nm}`"><code>{{ details.code }}</code>{{ details.contain }}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12"  v-for="( otherStyle,index) in otherStyleDetails" :key="index">
                    <div class="card">
                        <div class="header">
                            <h2>{{ otherStyle.title }}</h2>
                        </div>
                        <div class="body">
                            <p v-for="( details,index) in otherStyle.details" :key="index"  :class="`${details.class_nm}`"><code  :class="`${details.class}`">{{ details.code }}</code> {{ details.contain }}</p>
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
    name:'TypographyComponent',
    components: {
       BreadCrumb,
    },data (){
        return{
            paragraphDetails:[
                {
                    class_nm:'align-left',
                    title:'Align Left',
                    detail:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',

                },
                {
                    class_nm:'align-center',
                    title:'Align center',
                    detail:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',

                },
                {
                    class_nm:'align-right',
                    title:'Align right',
                    detail:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',

                },
                {
                    class_nm:'align-justify',
                    title:'Align justify',
                    detail:'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',

                },
            ],
            textStyleDetails:[
                {
                    title:'Text Style',
                    details:[
                        {
                            class_nm:'text-muted',
                            code:'.text-muted',
                            contain:' Convey meaning through color with a handful of emphasis utility classes.'

                        },
                        {
                            class_nm:'text-primary',
                            code:'.text-primary',
                            contain:' Convey meaning through color with a handful of emphasis utility classes.'

                        },
                        {
                            class_nm:'text-success',
                            code:'.text-success',
                            contain:' Convey meaning through color with a handful of emphasis utility classes.'

                        },
                        {
                            class_nm:'text-info',
                            code:'.text-info',
                            contain:' Convey meaning through color with a handful of emphasis utility classes.'

                        },
                        {
                            class_nm:'text-warning',
                            code:'.text-warning',
                            contain:' Convey meaning through color with a handful of emphasis utility classes.'

                        },
                        {
                            class_nm:'text-danger',
                            code:'.text-danger',
                            contain:' Convey meaning through color with a handful of emphasis utility classes.'

                        },
                    ]

                },
            ],
            otherStyleDetails:[
                {
                    title:'Other Style',
                    details:[
                        {
                            class_nm:'',
                            class:'',
                            code:'',
                            contain:'You can use the mark tag to highlight text.'

                        },
                        {
                            class_nm:'',
                            class:'',
                            code:'',
                            contain:'This line of text is meant to be treated as deleted text.'

                        },
                        {
                            class_nm: 'text-lowercase',
                            class: '',
                            code: '.text-lowercase',
                            contain: 'Lowercased text.'

                        },
                        {
                            class_nm:'text-uppercase',
                            class:'text-lowercase',
                            code:'.text-uppercase',
                            contain:' Uppercased text.'

                        },
                        {
                            class_nm:'text-capitalize',
                            class:'text-lowercase',
                            code:'.text-capitalized',
                            contain:'Capitalized text.'

                        },
                       {
                            class_nm:'',
                            class:'',
                            code:'.lead',
                            contain:'Make a paragraph stand out by adding'

                        },
                        {
                            class_nm:'lead',
                            class:'',
                            code:'',
                            contain:'Objectively re-engineer maintainable total linkage after proactive intellectual capital. Dynamically evolve best-of-breed e-services for user-centric customer.'

                        },                          
                    ]
                },
            ],
        }
    },methods: {
        
    }   
}
</script>
<style scoped>

</style>