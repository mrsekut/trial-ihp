module Web.View.Posts.Show where

import qualified Text.MMark       as MMark
import           Web.View.Prelude

data ShowView = ShowView { post :: Post }

instance View ShowView where
    html ShowView { .. } = [hsx|
        {breadcrumb}
        <h1>{get #title post}</h1>
        <p>{get #createdAt post |> timeAgo}</p>
        <div>{get #body post |> renderMarkdown}</div>

        <a href={NewCommentAction (get #id post)}>Add Comment</a>
    |]
        where
            breadcrumb = renderBreadcrumb
                            [ breadcrumbLink "Posts" PostsAction
                            , breadcrumbText "Show Post"
                            ]

            renderMarkdown text = case text |> MMark.parse "" of
                Left err -> "Something went wrong"
                Right markdown -> MMark.render markdown |> tshow |> preEscapedToHtml
