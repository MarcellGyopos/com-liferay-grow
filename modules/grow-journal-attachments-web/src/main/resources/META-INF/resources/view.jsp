<%--
/**
* Copyright (c) 2000-present Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
--%>

<%@ include file="/init.jsp" %>

<nav class="a-items">
	<input class="activate hidden" id="tags" name="tags" type="checkbox" />

	<label class="accordion-label" for="tags">Attachments</label>

	<div class="a-content sbox">
		<ul class="list-unstyled">
			<c:if test="<%= Validator.isNotNull(journalAttachmentsDisplayContext.getAttachments()) %>">

				<%
				for (String title : journalAttachmentsDisplayContext.getTitle()) {
				%>

					<li>
						<span class="glyphicon glyphicon-paperclip"></span>
						<a href=""><%= title %></a>
					</li>

				<%
				}
				%>

			</c:if>
		</ul>
	</div>
</nav>