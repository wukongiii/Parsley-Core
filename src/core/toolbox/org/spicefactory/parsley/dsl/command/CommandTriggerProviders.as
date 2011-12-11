/*
 * Copyright 2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.spicefactory.parsley.dsl.command {
/**
 * Global registry for providers that can determine the trigger messages
 * for commands.
 * 
 * @author Jens Halm
 */
public class CommandTriggerProviders {
	
	
	private static var _defaultProvider:CommandTriggerProvider;

	/**
	 * The default provider to use for all commands.
	 */
	static public function get defaultProvider () : CommandTriggerProvider {
		if (!_defaultProvider) {
			_defaultProvider = new DefaultCommandTriggerProvider();
		}
		return _defaultProvider;
	}

	static public function set defaultProvider (defaultProvider:CommandTriggerProvider) : void {
		_defaultProvider = defaultProvider;
	}
	
	
}
}
