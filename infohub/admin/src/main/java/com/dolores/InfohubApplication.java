package com.dolores;

import com.dolores.html.domain.JsoupResolver;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;

import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;

@ServletComponentScan
@MapperScan({"com.dolores.*.mapper"})
@SpringBootApplication(scanBasePackages = {"com.dolores.**"})
public class InfohubApplication {

    public static void main(String[] args) {
        SpringApplication.run(InfohubApplication.class, args);

    }

    public static void execute() {
        String path = "D:\\IdeaProject\\InfoHub\\infohub\\admin\\src\\main\\resources\\templates\\system\\status\\503.html";
        String html = getHtml(path);
        parseHtml(html, path);
    }

    public static void parseHtml(String html, String path) {
        Document doc = Jsoup.parse(html);
        List<JsoupResolver> jsoupResolverList = prepareResolverList();
        modifyAttr(doc, jsoupResolverList);
//        printfHtml(doc, "link");
        String rebuildHtml = doc.html();
        try (FileWriter writer = new FileWriter(path, false)) {
            writer.write(rebuildHtml);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static List<JsoupResolver> prepareResolverList() {
        List<JsoupResolver> resolverList = new ArrayList<>();
        JsoupResolver thLinkResolver = new JsoupResolver()
                .setQuery("link")
                .setAttr("th:href")
                .setRemoveAttr("href");
        JsoupResolver thScriptResolver = new JsoupResolver()
                .setQuery("script")
                .setAttr("th:src")
                .setRemoveAttr("src");
        JsoupResolver thImgResolver = new JsoupResolver()
                .setQuery("img")
                .setAttr("th:src")
                .setRemoveAttr("src");

        resolverList.add(thLinkResolver);
        resolverList.add(thScriptResolver);
        resolverList.add(thImgResolver);

        JsoupResolver linkResolver = new JsoupResolver()
                .setQuery("link")
                .setAttr("th:href")
                .setRemoveVal("../assets")
                .setAppendStart("@{/static")
                .setAppendEnd("}");
        JsoupResolver scriptResolver = new JsoupResolver()
                .setQuery("script")
                .setAttr("th:src")
                .setRemoveVal("../assets")
                .setAppendStart("@{/static")
                .setAppendEnd("}");
        JsoupResolver imgResolver = new JsoupResolver()
                .setQuery("img")
                .setAttr("th:src")
                .setRemoveVal("../assets")
                .setAppendStart("@{/static")
                .setAppendEnd("}");
        resolverList.add(linkResolver);
        resolverList.add(scriptResolver);
        resolverList.add(imgResolver);
        return resolverList;
    }

    public static void modifyAttr(Document doc, List<JsoupResolver> jsoupResolverList) {
        jsoupResolverList.forEach(item -> {
            String query = item.getQuery();
            String attr = item.getAttr();
            String appendStart = item.getAppendStart();
            String appendEnd = item.getAppendEnd();
            String removeAttr = item.getRemoveAttr();
            String removeVal = item.getRemoveVal();
            Elements links = doc.select(query);
            for (Element link : links) {
                String href;
                if (StringUtils.isNotBlank(removeAttr)) {
                    href = link.attr(removeAttr);
                } else {
                    href = link.attr(attr);
                }
                if (StringUtils.isNotBlank(removeAttr)) {
                    link.removeAttr(removeAttr);
                    link.attr(attr, href);
                }
                if (StringUtils.isNotBlank(removeVal)) {
                    href = href.replaceAll(removeVal, "");
                    String rebuild = appendStart + href + appendEnd;
                    link.attr(attr, rebuild);
                }
            }
        });
    }

    public static void printfHtml(Document doc, String query) {
        Elements links = doc.select(query);
        for (Element link : links) {
            String attr = link.attr("href");
            System.out.println(attr);
        }
    }

    public static String getHtml(String path) {
        StringBuilder sb = new StringBuilder();
        try {
            RandomAccessFile file = new RandomAccessFile(path, "r");
            String line;
            while ((line = file.readLine()) != null) {
                sb.append(line);
            }
            file.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return sb.toString();
    }

    /*public static void modifyPage() throws Exception {
        String path = "D:\\IdeaProject\\InfoHub\\infohub\\admin\\src\\main\\resources\\templates\\system\\home.html";
//        File file = new File(path);
//        FileInputStream fileInputStream = new FileInputStream(file);
//        BufferedReader reader = new BufferedReader(new InputStreamReader(fileInputStream));
        RandomAccessFile file = new RandomAccessFile(path, "r");
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = file.readLine()) != null) {
            sb.append(line);
        }
        file.close();
        List<String> labelList = findAllLabelType(sb);
        StringBuilder builder = rebuildLabelData(labelList);
        try (FileWriter writer = new FileWriter(path, false)) {
            writer.write(builder.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }*/

    /*public static List<HtmlResolver> getPatternList() {
        List<HtmlResolver> resolverList = new ArrayList<>();
        HtmlResolver htmlResolver = new HtmlResolver()
                .setRegx("<html.*?>")
                .setAppendData("xmlns:th=\"http://www.thymeleaf.org\"");
        LabelProperty labelProperty = new LabelProperty()
                .setProperty("href")
                .setRegx("href=\"(.*?)\"")
                .setStartSign("th:href=\"")
                .setMiddleSign("@{/static")
                .setEndSign("}\"")
                .setRemoveData("../assets");
        HtmlResolver linkResolver = new HtmlResolver()
                .setRegx("<link.*?>")
                .setLabelProperty(labelProperty);
        LabelProperty scriptProperty = new LabelProperty()
                .setProperty("src")
                .setRegx("src=\"(.*?)\"")
                .setStartSign("th:src=\"")
                .setMiddleSign("@{/static")
                .setEndSign("}\"")
                .setRemoveData("../assets");
        HtmlResolver scriptResolver = new HtmlResolver()
                .setRegx("<script.*>")
                .setLabelProperty(scriptProperty);
        LabelProperty imgProperty = new LabelProperty()
                .setProperty("src")
                .setRegx("src=\"(.*?)\"")
                .setStartSign("th:src=\"")
                .setMiddleSign("@{/static")
                .setEndSign("}\"")
                .setRemoveData("../assets");
        HtmlResolver imgResolver = new HtmlResolver()
                .setRegx("<img.*>")
                .setLabelProperty(imgProperty);
        resolverList.add(htmlResolver);
        resolverList.add(linkResolver);
        resolverList.add(scriptResolver);
//        resolverList.add(imgResolver);
        return resolverList;
    }*/

    /*public static List<String> findAllLabelType(StringBuilder sb) {
        Pattern labelPattern = Pattern.compile("<.*?>");
        Matcher matcher = labelPattern.matcher(sb);
        List<String> labelList = new ArrayList<>();
        while (matcher.find()) {
            labelList.add(matcher.group());
        }
        return labelList;
    }*/

    /*public static StringBuilder rebuildLabelData(List<String> labelList) {
        List<HtmlResolver> resolverList = getPatternList();
        IntStream.range(0, labelList.size()).forEach(index -> {
            resolverList.forEach(htmlResolver -> {
                String modifyData = modifyData(htmlResolver, labelList.get(index));
                labelList.set(index, modifyData);
            });
        });
        StringBuilder sb = new StringBuilder();
        labelList.forEach(sb::append);
        return sb;
    }*/

    /*public static String modifyData(HtmlResolver htmlResolver, String label) {
        //获取正则表达式规则
        String regx = htmlResolver.getRegx();
        //获取追加数据
        String appendData = htmlResolver.getAppendData();
        //获取标签属性解析器
        LabelProperty labelProperty = htmlResolver.getLabelProperty();
        //获取解析模式
        Pattern pattern = Pattern.compile(regx);
        //获取匹配器
        Matcher htmlMatcher = pattern.matcher(label);
        String matchLabel = label;
        //查找匹配数据
        if (htmlMatcher.find()) {
            //获取匹配数据
            matchLabel = htmlMatcher.group();
            //判断修改数据是否为空并且判断html不包含修改数据
            if (StringUtils.isNotBlank(appendData) && !matchLabel.contains(appendData)) {
                //字符分割,获取排除最后一位的所有字符
                matchLabel = matchLabel.substring(0, matchLabel.length() - 1);
                //拼接需要修改的数据
                matchLabel += " " + appendData + ">";
            }
            if (labelProperty != null) {
                matchLabel = modifyLabelPropertyValue(matchLabel, labelProperty);
            }
        }
        return matchLabel;
    }*/

    /*public static String modifyLabelPropertyValue(String label, LabelProperty labelProperty) {
        //获取标签属性
        String property = labelProperty.getProperty();
        //获取标签属性值
        String value = labelProperty.getValue();
        //获取正则表达式
        String regx = labelProperty.getRegx();
        //获取标签属性值追加数据
        String propertyAppendData = labelProperty.getAppendData();
        //获取开始标识
        String startSign = labelProperty.getStartSign();
        //获取中间标识
        String middleSign = labelProperty.getMiddleSign();
        //获取末尾表示
        String endSign = labelProperty.getEndSign();
        String removeData = labelProperty.getRemoveData();
        //获取正则模式
        Pattern pattern = Pattern.compile(regx);
        Matcher matcher = pattern.matcher(label);
        if (matcher.find()) {
            String replace = label.replaceAll(regx, "");
            int lastIndexOf = replace.lastIndexOf(">");
            String space = " ";
            String start = replace.substring(0, lastIndexOf);
            String end = replace.substring(lastIndexOf);
            String target = matcher.group(1);
            return start + space + startSign + middleSign + target.replace(removeData, "") + endSign + space + end;
        }
        return label;
    }*/
}
