[#assign autoplay = content.autoplay?string('0','1')!]
[#assign loop = content.loop?string('0','1')!]
[#assign controls = content.controls?string('0','1')!]
[#assign width = content.width!"100px"]
[#assign height = content.height!"100px"]
[#assign videoId = content.videoId!]
[#assign color = content.color!]

[#if color == "red"]
	[#assign color = "&color=red"]
[#else]
    [#assign color = "&color=white"]
[/#if]

[#if autoplay == "1"]
	[#assign autoplay = "?autoplay=0"]
[#else]
	[#assign autoplay = "?autoplay=1"]
[/#if]
 
[#if loop == "0"]
	[#assign loop = "&loop=1&playlist=${videoId}"]
[#else]
	[#assign loop = "&loop=0"]
[/#if]

[#if controls == "0"]
[#assign controls = "&controls=0"]
[#else]
[#assign controls = "&controls=1"]
[/#if]

<div class="youtubeIframe">
  [#if content.title?has_content]
    <h2>${content.title!}</h2>
  [/#if]
<iframe width="${width}px" height="${height}px"
  src="https://www.youtube.com/embed/${videoId}${autoplay}${controls}${loop}${color}"  frameborder="0" allowfullscreen >
</iframe>
</div>
