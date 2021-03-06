package com.somanyfeeds.feedprocessing

import com.somanyfeeds.feeddataaccess.FeedRecord
import com.somanyfeeds.feeddataaccess.FeedRepository


class FeedsUpdater(val feedRepository: FeedRepository,
                   val articleUpdater: ArticleUpdater,
                   val feedProcessors: List<FeedProcessor>) : Runnable {

    override fun run() {
        feedRepository.findAll().forEach { feed ->
            try {
                process(feed)
            } catch (e: Exception) {
                throw Exception("There was an error when processing feed $feed", e)
            }
        }
    }

    private fun process(feed: FeedRecord) {
        feedProcessors.forEach {
            if (it.canProcess(feed)) {
                val articles = it.process(feed)
                articleUpdater.updateArticles(articles, feed)
                return
            }
        }

        throw IllegalStateException("No processor was found for processing the feed, available processors were $feedProcessors")
    }
}
