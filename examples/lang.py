# utils to build the graph nodes/edges

from langchain.pydantic_v1 import BaseModel, Field
from langchain_openai import ChatOpenAI

#api_base="https://api.01ww.xyz/v1"
#api_key='platform-test'
#api_base = 'http://14.103.22.88:9087/v1'
api_base="http://0.0.0.0:8001/v1"
api_key = '123'

# Data model
class IntentionFormat(BaseModel):
    """Returns search keywords"""

    keywords: str = Field(
        ...,
        description = "The keywords to search the web with, separated by a single space"
    )

# define LLMs
llm = ChatOpenAI(
    max_tokens=4096,
    #model_name='gpt-4o',#'gpt-4-turbo'
    model_name='v10-088',
    openai_api_base=api_base,
    openai_api_key=api_key,
    request_timeout=200,
    temperature=0.01
)
kw_llm = llm.with_structured_output(IntentionFormat)
print(kw_llm)
kw_llm.invoke('How is the weather today?')
