import { useUser, withPageAuthRequired, getSession } from "@auth0/nextjs-auth0"
import { withApollo } from "../../lib/withApollo";
import { getServerPageGetProducts, ssrGetProducts } from "../../graphql/generated/page";
import { useMeQuery } from "../../graphql/generated/graphql";

function Home({ data }) {
  const { user } = useUser();
  const { data: me } = useMeQuery();

  return (
    <div className="text-violet-500">
      <h1>Hello World</h1>
      <pre>
        ok: {JSON.stringify(me, null, 2)}
      </pre>
      {/* <pre>
        {JSON.stringify(data.products, null, 2)}
      </pre> */}
      <pre>{JSON.stringify(user, null, 2)}</pre>
    </div>
  )
}

export const getServerSideProps = withPageAuthRequired({
  getServerSideProps: async (ctx) => {
    // getServerPageGetProducts(null, ctx);
    
    return {
      props: {}
    }
  }
});

export default withApollo(
  ssrGetProducts.withPage()(Home)
);