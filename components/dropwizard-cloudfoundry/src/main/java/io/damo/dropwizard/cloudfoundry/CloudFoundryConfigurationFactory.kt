package io.damo.dropwizard.cloudfoundry

import io.damo.dropwizard.cloudfoundry.configs.VcapService
import io.dropwizard.configuration.ConfigurationFactory
import io.dropwizard.configuration.ConfigurationSourceProvider

class CloudFoundryConfigurationFactory<T>(val mapper: (List<VcapService>) -> T, val vcapServices: List<VcapService>) : ConfigurationFactory<T> {

    override fun build(provider: ConfigurationSourceProvider?, path: String?) = build()

    override fun build(): T = mapper(vcapServices)
}