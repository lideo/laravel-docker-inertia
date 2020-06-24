import React from "react";

function Welcome({ url_home, url_about }) {
    return (
        <>
            <div className="flex-center position-ref full-height">
                <div className="top-right links">
                    <a href={url_home}>Home</a>
                    <a href={url_about}>About</a>
                </div>
                <div className="content">
                    <div className="title m-b-md">Laravel</div>

                    <div className="links">
                        <a href="https://laravel.com/docs">Docs</a>
                        <a href="https://laracasts.com">Laracasts</a>
                        <a href="https://laravel-news.com">News</a>
                        <a href="https://blog.laravel.com">Blog</a>
                        <a href="https://nova.laravel.com">Nova</a>
                        <a href="https://forge.laravel.com">Forge</a>
                        <a href="https://vapor.laravel.com">Vapor</a>
                        <a href="https://github.com/laravel/laravel">GitHub</a>
                    </div>
                </div>
            </div>
        </>
    );
}

export default Welcome;
